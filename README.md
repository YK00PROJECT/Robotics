# README: Robotic Kinematics and Transformations

## Introduction

This repository contains a collection of scripts and documents for simulating and analyzing robotic movements and transformations using MATLAB and Python. The primary focus is on understanding and implementing forward kinematics for a 5-degree-of-freedom (DoF) robot, along with the conversion between different rotation representations such as rotation matrices, quaternions, and Euler angles.

## Contents

- **Homogenous_Rotation_Matrix_code.m**: MATLAB script for generating and manipulating homogenous rotation matrices.
- **Presenting-Calculations-and-Robotic-Models.pdf**: A detailed document that presents the theoretical background, calculations, and models related to robotic kinematics and transformations.
- **conversion between Rotation Matrix, Quaternions and Euler Angles (1).py**: Python script that demonstrates the conversion between rotation matrices, quaternions, and Euler angles.
- **dof5_forward_kinematics.m**: MATLAB script for computing the forward kinematics of a robot with five degrees of freedom.

## Software Requirements

- **MATLAB**: The `.m` scripts are designed to run in MATLAB. Ensure you have the latest version installed to avoid compatibility issues.
- **Python**: Python scripts require Python 3.x. It's recommended to install libraries like `numpy` and `matplotlib` for matrix operations and plotting, respectively.

## Usage

### MATLAB Scripts

1. **Homogenous Rotation Matrix Code**:
   - Open the script in MATLAB.
   - Run the script to see how homogeneous rotation matrices are generated and manipulated.
   - This script is useful for understanding the transformation matrices used in robotics.

2. **5 DoF Forward Kinematics**:
   - Load the script in your MATLAB environment.
   - Execute the script to compute the position and orientation of the robot's end effector based on the specified joint angles.
   - This script provides practical insights into how robotic arms move and how their movements can be predicted.

### Python Scripts

1. **Conversion between Rotation Representations**:
   - Ensure Python and necessary libraries are installed.
   - Run the script in a Python environment (like Anaconda or Python's IDLE).
   - Use this script to convert between different forms of representing rotations which is crucial for applications requiring precise control over orientation in 3D space.

## Documentation

Refer to the `Presenting-Calculations-and-Robotic-Models.pdf` for a comprehensive breakdown of the theories, calculations, and practical models that underpin the scripts provided in this repository. This document is essential for anyone looking to understand the mathematical foundations of robotic kinematics and transformations.

## Contribution

Contributions to this project are welcome. You can improve existing scripts, add new features, or provide examples of real-world applications. To contribute:
- Fork the repository.
- Make your changes.
- Submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.

## Support

For support, please open an issue on the repository's issues page or contact the repository maintainer.

## Conclusion

This repository is intended for educational purposes, helping students, researchers, and hobbyists understand and implement fundamental robotic kinematics and transformation calculations in MATLAB and Python. It bridges the gap between theoretical knowledge and practical application in robotics.
