# Building Boost for ARM64 and Packaging (Document Generated for Developers at Aupera Tech)

This guide provides instructions for building the Boost C++ Libraries for ARM64 architecture and packaging them into a Debian or RPM package.

This procedure has been tested for the K260 SOM Device using this SDK: [Vitis-AI 2.5 SDK](https://github.com/Xilinx/Vitis-AI/blob/2.5/setup/mpsoc/host_cross_compiler_setup.sh).

## Prerequisites
- Access to an ARM64 architecture environment or a cross-compilation setup.
- Suitable for use with SDKs for cross-compilation on v205, SBC, SOM, etc.

## Step 1: Cloning Boost
Clone the Boost repository:
```bash
git clone --recursive git@github.com:auperatech/boost_aupera.git
cd boost
```
Find the commit for the version you need using the tags from the original repo and checkout to the appropiate commit number.
```bash
git checkout #commit_number
```

## Step 2: Building Boost for ARM64
1. **Bootstrap Boost:**
   ```bash
   ./bootstrap.sh
   ```

2. **Set up Cross-Compilation Environment (if needed):**
   Update the `user-config.jam` file with the appropriate cross-compilation toolset. Example for Xilinx ARM64:
   ```bash
   echo "using gcc : xilinx : aarch64-xilinx-linux-g++ : <cxxflags>--sysroot=/som_sdk_vitis2.5/sysroots/cortexa72-cortexa53-xilinx-linux <linkflags>--sysroot=/som_sdk_vitis2.5/sysroots/cortexa72-cortexa53-xilinx-linux" >> tools/build/example/user-config.jam
   ```
   Make sure SYSTROOT is set to corss-compilation systemroot. For Aupera developers if STAGING_DIR just run the following command:
   ```
    export SYSROOT=$STAGING_DIR
   ```

3. **Build Boost Libraries:**
   ```bash
    ./b2 toolset=gcc-xilinx architecture=arm address-model=64 link=shared --with-system --with-thread --with-date_time --with-regex --with-serialization --with-filesystem
   ```

## Step 3: Creating a Debian or RPM Package

### Debian Package
1. **Create Package Directory Structure:**
   ```bash
   mkdir -p my_boost_deb_package/DEBIAN
   mkdir -p my_boost_deb_package/usr/lib
   mkdir -p my_boost_deb_package/usr/include
   ```

2. **Copy Built Files:**
   ```bash
   cp -R /path/to/boost/stage/lib/*.so* my_boost_deb_package/usr/lib/
   cp -R /path/to/boost/boost my_boost_deb_package/usr/include/
   ```

3. **Create `control` File:**
   Inside `my_boost_deb_package/DEBIAN`, create a `control` file with package metadata. Example:
    ```bash
    Package: boost1.77.0-aarch64-xilinx
    Version: 1.77.0
    Section: libs
    Priority: optional
    Architecture: arm64
    Depends: libc6 (>= 2.17), libgcc1 (>= 1:3.0), libstdc++6 (>= 5.2)
    Maintainer: Your Name <your.email@example.com>
    Description: Boost C++ Libraries 1.77.0 for ARM64
    The Boost project provides free peer-reviewed portable C++ source libraries.
    The emphasis is on portable libraries which work well with the C++ Standard Library.
    ```


4. **Build the Package:**
   ```bash
   dpkg-deb --build my_boost_deb_package
   ```

5. **Install and Test: (on the target board)**
   ```bash
   sudo dpkg -i my_boost_deb_package.deb
   ```

### RPM Package
1. **Set up RPM Build Environment:**
   Follow your distribution's guide to set up an RPM build environment.

2. **Copy the Files to the Build Environment:**
   Place the Boost library files and headers in the appropriate directories in the build environment.

3. **Create a Spec File:**
   Create an RPM spec file with the necessary metadata and build instructions.

4. **Build the RPM Package:**
   Use `rpmbuild` to build the RPM package.

5. **Install and Test:**
   ```bash
   sudo rpm -i my_boost_rpm_package.rpm
   ```

## Notes
- The instructions for RPM packaging are general. Refer to specific RPM build guidelines for detailed steps.
- Ensure you have the necessary permissions and tools installed for building and packaging.
