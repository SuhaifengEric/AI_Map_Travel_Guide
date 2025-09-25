#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Python环境变量检查工具
用于验证Python环境变量配置是否正确
"""

import os
import sys
import platform

def check_python_environment():
    """检查Python环境变量配置"""
    print("=" * 60)
    print("Python环境变量检查报告")
    print("=" * 60)
    
    # 系统信息
    print(f"操作系统: {platform.system()} {platform.release()}")
    print(f"Python版本: {platform.python_version()}")
    print(f"Python安装路径: {sys.executable}")
    print(f"Python前缀: {sys.prefix}")
    
    print("\n" + "-" * 60)
    print("环境变量检查:")
    print("-" * 60)
    
    # 检查关键环境变量
    env_vars = [
        'PATH',
        'PYTHONPATH', 
        'PYTHONHOME',
        'PYTHONSTARTUP',
        'VIRTUAL_ENV',  # 虚拟环境
    ]
    
    for var in env_vars:
        value = os.environ.get(var)
        if value:
            print(f"✓ {var}: {value}")
        else:
            print(f"✗ {var}: 未设置")
    
    # 检查PATH中的Python路径
    print("\n" + "-" * 60)
    print("PATH中的Python相关路径:")
    print("-" * 60)
    
    path_dirs = os.environ.get('PATH', '').split(os.pathsep)
    python_dirs = [d for d in path_dirs if 'python' in d.lower() or 'script' in d.lower()]
    
    if python_dirs:
        for dir_path in python_dirs:
            if os.path.exists(dir_path):
                print(f"✓ {dir_path}")
            else:
                print(f"✗ {dir_path} (路径不存在)")
    else:
        print("未找到Python相关路径")
    
    # 模块搜索路径
    print("\n" + "-" * 60)
    print("Python模块搜索路径:")
    print("-" * 60)
    for i, path in enumerate(sys.path):
        print(f"{i:2d}. {path}")
    
    # 总结
    print("\n" + "=" * 60)
    print("配置建议:")
    print("=" * 60)
    
    python_exe_dir = os.path.dirname(sys.executable)
    scripts_dir = os.path.join(os.path.dirname(python_exe_dir), 'Scripts')
    
    if python_exe_dir not in path_dirs:
        print(f"⚠️  建议将Python安装目录添加到PATH: {python_exe_dir}")
    
    if os.path.exists(scripts_dir) and scripts_dir not in path_dirs:
        print(f"⚠️  建议将Scripts目录添加到PATH: {scripts_dir}")
    
    print("\n完成检查!")

if __name__ == "__main__":
    check_python_environment()