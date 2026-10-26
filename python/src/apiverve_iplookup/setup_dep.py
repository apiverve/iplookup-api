from setuptools import setup, find_packages

setup(
    name='apiverve_iplookup',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='IP Lookup is an IP address location API that resolves any IP to its country, region, timezone and continent. Paid plans add city, coordinates, postal code, an accuracy radius and an EU-membership flag for compliance routing.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/iplookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
