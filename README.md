# Join job results

[![Action Template](https://img.shields.io/badge/Action%20Template-Python%20Container%20Action-blue.svg?colorA=24292e&colorB=0366d6&style=flat&longCache=true&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAM6wAADOsB5dZE0gAAABl0RVh0U29mdHdhcmUAd3d3Lmlua3NjYXBlLm9yZ5vuPBoAAAERSURBVCiRhZG/SsMxFEZPfsVJ61jbxaF0cRQRcRJ9hlYn30IHN/+9iquDCOIsblIrOjqKgy5aKoJQj4O3EEtbPwhJbr6Te28CmdSKeqzeqr0YbfVIrTBKakvtOl5dtTkK+v4HfA9PEyBFCY9AGVgCBLaBp1jPAyfAJ/AAdIEG0dNAiyP7+K1qIfMdonZic6+WJoBJvQlvuwDqcXadUuqPA1NKAlexbRTAIMvMOCjTbMwl1LtI/6KWJ5Q6rT6Ht1MA58AX8Apcqqt5r2qhrgAXQC3CZ6i1+KMd9TRu3MvA3aH/fFPnBodb6oe6HM8+lYHrGdRXW8M9bMZtPXUji69lmf5Cmamq7quNLFZXD9Rq7v0Bpc1o/tp0fisAAAAASUVORK5CYII=)](https://github.com/jacobtomlinson/python-container-action)
[![CI](https://github.com/luisrayas3/join-job-results/actions/workflows/ci.yaml/badge.svg)](https://github.com/luisrayas3/join-job-results/actions)

## Example workflow

```yaml
name: Foo workflow
on: [push, pull_request]
jobs:
  test-1:
    runs-on: ubuntu-latest
    steps:
      - run: execute test1
  test-2:
    runs-on: ubuntu-latest
    steps:
      - run: execute test2
  required-checks:
    needs: [test-1, test-2]
    runs-on: ubuntu-latest
    steps:
    - name: All required checks succeeded
      uses: luisrayas3/join-job-results@master
      with:
        results: ${{ needs.*.result }}
```
