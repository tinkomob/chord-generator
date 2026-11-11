{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 9,
      "minor": 0,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [
      687.0,
      133.0,
      891.0,
      436.0
    ],
    "openrect": [
      0.0,
      0.0,
      152.0,
      147.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 10.0,
    "default_fontface": 0,
    "default_fontname": "Arial Bold",
    "gridonopen": 1,
    "gridsize": [
      8.0,
      8.0
    ],
    "gridsnaponopen": 1,
    "objectsnaponopen": 1,
    "statusbarvisible": 2,
    "toolbarvisible": 1,
    "lefttoolbarpinned": 0,
    "toptoolbarpinned": 0,
    "righttoolbarpinned": 0,
    "bottomtoolbarpinned": 0,
    "toolbars_unpinned_last_save": 0,
    "tallnewobj": 0,
    "boxanimatetime": 500,
    "enablehscroll": 0,
    "enablevscroll": 0,
    "devicewidth": 152.0,
    "description": "Scale-aware chord progressions with repeating harmonic arcs and voice leading.",
    "digest": "",
    "tags": "",
    "style": "",
    "subpatcher_template": "",
    "assistshowspatchername": 0,
    "boxes": [
      {
        "box": {
          "id": "in",
          "maxclass": "newobj",
          "patching_rect": [
            250.0,
            10.0,
            100.0,
            22.0
          ],
          "text": "live.miditool.in"
        }
      },
      {
        "box": {
          "id": "gen",
          "maxclass": "newobj",
          "patching_rect": [
            250.0,
            70.0,
            120.0,
            22.0
          ],
          "text": "js chord_generator.js",
          "numinlets": 2,
          "numoutlets": 2
        }
      },
      {
        "box": {
          "id": "out",
          "maxclass": "newobj",
          "patching_rect": [
            250.0,
            120.0,
            100.0,
            22.0
          ],
          "text": "live.miditool.out"
        }
      },
      {
        "box": {
          "id": "bang",
          "maxclass": "newobj",
          "patching_rect": [
            250.0,
            40.0,
            30.0,
            22.0
          ],
          "text": "t b"
        }
      },
      {
        "box": {
          "id": "parameter-update",
          "maxclass": "newobj",
          "text": "t b l",
          "patching_rect": [
            400.0,
            260.0,
            45.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "octaves",
          "maxclass": "live.menu",
          "parameter_enable": 1,
          "varname": "octaves",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Size",
              "parameter_shortname": "Size",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 4,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                1
              ],
              "parameter_enum": [
                "2 Notes",
                "3 Notes",
                "4 Notes",
                "5 Notes",
                "6 Notes"
              ]
            }
          },
          "presentation": 0,
          "presentation_rect": [
            101,
            3,
            48,
            14
          ],
          "patching_rect": [
            400,
            0,
            48,
            14
          ],
          "annotation": "Size",
          "showname": 0,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "fontname": "Arial",
          "hint": "Size",
          "textcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "bordercolor": [
            0.12,
            0.12,
            0.12,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "appearance": 1,
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "octavesmsg",
          "maxclass": "newobj",
          "text": "prepend octaves",
          "patching_rect": [
            400,
            24,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "patternlabel",
          "maxclass": "comment",
          "text": "Voice",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            79,
            114,
            36,
            14
          ],
          "patching_rect": [
            79,
            0,
            36,
            14
          ],
          "textcolor": [
            0.65,
            0.65,
            0.65,
            1
          ],
          "fontname": "Arial",
          "textjustification": 0,
          "varname": "patternlabel"
        }
      },
      {
        "box": {
          "id": "pattern",
          "maxclass": "live.menu",
          "parameter_enable": 1,
          "varname": "pattern",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Voicing",
              "parameter_shortname": "Voicing",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 3,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Root",
                "Spread",
                "Quartal",
                "Rootless"
              ]
            }
          },
          "presentation": 0,
          "presentation_rect": [
            105,
            115,
            44,
            13
          ],
          "patching_rect": [
            570,
            0,
            44,
            13
          ],
          "annotation": "Voice",
          "showname": 0,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "fontname": "Arial",
          "hint": "Voicing",
          "textcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "bordercolor": [
            0.12,
            0.12,
            0.12,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ]
        }
      },
      {
        "box": {
          "id": "patternmsg",
          "maxclass": "newobj",
          "text": "prepend pattern",
          "patching_rect": [
            570,
            24,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "segments",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "varname": "segments",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Segments",
              "parameter_shortname": "Segments",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 16,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            4,
            42,
            42,
            32
          ],
          "patching_rect": [
            400,
            65,
            42,
            32
          ],
          "annotation": "Segments",
          "showname": 0,
          "fontsize": 10,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Segments",
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "appearance": 3,
          "shownumber": 0,
          "activedialcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activefgdialcolor": [
            0.31,
            0.32,
            0.33,
            1
          ],
          "activeneedlecolor": [
            0.84,
            0.84,
            0.81,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ]
        }
      },
      {
        "box": {
          "id": "segmentsmsg",
          "maxclass": "newobj",
          "text": "prepend segments",
          "patching_rect": [
            400,
            89,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "density",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "varname": "density",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Density %",
              "parameter_shortname": "Density",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                100
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            50,
            42,
            52,
            31
          ],
          "patching_rect": [
            570,
            65,
            52,
            31
          ],
          "annotation": "Density",
          "showname": 0,
          "fontsize": 10,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Density %",
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "appearance": 3,
          "shownumber": 0,
          "activedialcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activefgdialcolor": [
            0.31,
            0.32,
            0.33,
            1
          ],
          "activeneedlecolor": [
            0.84,
            0.84,
            0.81,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ]
        }
      },
      {
        "box": {
          "id": "densitymsg",
          "maxclass": "newobj",
          "text": "prepend density",
          "patching_rect": [
            570,
            89,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "register",
          "maxclass": "live.dial",
          "parameter_enable": 1,
          "varname": "register",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Octave",
              "parameter_shortname": "Octave",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 8,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ]
            }
          },
          "presentation": 1,
          "presentation_rect": [
            105,
            42,
            42,
            32
          ],
          "patching_rect": [
            400,
            130,
            42,
            32
          ],
          "annotation": "Octave",
          "showname": 0,
          "fontsize": 10,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Octave",
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "appearance": 3,
          "shownumber": 0,
          "activedialcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activefgdialcolor": [
            0.31,
            0.32,
            0.33,
            1
          ],
          "activeneedlecolor": [
            0.84,
            0.84,
            0.81,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ]
        }
      },
      {
        "box": {
          "id": "registermsg",
          "maxclass": "newobj",
          "text": "prepend register",
          "patching_rect": [
            400,
            154,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "strum",
          "maxclass": "live.numbox",
          "parameter_enable": 1,
          "varname": "strum",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Strum %",
              "parameter_shortname": "Strum %",
              "parameter_type": 1,
              "parameter_mmin": -100,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_unitstyle": 5
            }
          },
          "presentation": 1,
          "presentation_rect": [
            36,
            98,
            36,
            13
          ],
          "patching_rect": [
            400,
            260,
            36,
            13
          ],
          "annotation": "Strum",
          "showname": 0,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Strum %",
          "textcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "bordercolor": [
            0.12,
            0.12,
            0.12,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "appearance": 1,
          "triangle": 0,
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "strummsg",
          "maxclass": "newobj",
          "text": "prepend strum",
          "patching_rect": [
            400,
            284,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "velocity",
          "maxclass": "live.numbox",
          "parameter_enable": 1,
          "varname": "velocity",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Velo %",
              "parameter_shortname": "Velo %",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                20
              ],
              "parameter_unitstyle": 5
            }
          },
          "presentation": 1,
          "presentation_rect": [
            36,
            115,
            36,
            13
          ],
          "patching_rect": [
            400,
            325,
            36,
            13
          ],
          "annotation": "Velo",
          "showname": 0,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Velo %",
          "textcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "bordercolor": [
            0.12,
            0.12,
            0.12,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "appearance": 1,
          "triangle": 0,
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "velocitymsg",
          "maxclass": "newobj",
          "text": "prepend velocity",
          "patching_rect": [
            400,
            349,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "gate",
          "maxclass": "live.numbox",
          "parameter_enable": 1,
          "varname": "gate",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Length %",
              "parameter_shortname": "Length %",
              "parameter_type": 1,
              "parameter_mmin": 10,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                100
              ],
              "parameter_unitstyle": 5
            }
          },
          "presentation": 1,
          "presentation_rect": [
            36,
            132,
            36,
            13
          ],
          "patching_rect": [
            400,
            390,
            36,
            13
          ],
          "annotation": "Length",
          "showname": 0,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Length %",
          "textcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "bordercolor": [
            0.12,
            0.12,
            0.12,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "appearance": 1,
          "triangle": 0,
          "textjustification": 2
        }
      },
      {
        "box": {
          "id": "gatemsg",
          "maxclass": "newobj",
          "text": "prepend gate",
          "patching_rect": [
            400,
            414,
            120,
            22
          ]
        }
      },
      {
        "box": {
          "id": "octaveslabel",
          "maxclass": "comment",
          "text": "Size",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            78,
            2,
            25,
            15
          ],
          "patching_rect": [
            4,
            1,
            25,
            15
          ],
          "textcolor": [
            0.65,
            0.65,
            0.65,
            1
          ],
          "fontname": "Arial",
          "textjustification": 0,
          "varname": "octaveslabel"
        }
      },
      {
        "box": {
          "id": "strumlabel",
          "maxclass": "comment",
          "text": "Strum",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            4,
            97,
            30,
            14
          ],
          "patching_rect": [
            4,
            85,
            30,
            14
          ],
          "textcolor": [
            0.65,
            0.65,
            0.65,
            1
          ],
          "fontname": "Arial",
          "textjustification": 0,
          "varname": "strumlabel"
        }
      },
      {
        "box": {
          "id": "velocitylabel",
          "maxclass": "comment",
          "text": "Velo",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            4,
            114,
            30,
            14
          ],
          "patching_rect": [
            4,
            106,
            30,
            14
          ],
          "textcolor": [
            0.65,
            0.65,
            0.65,
            1
          ],
          "fontname": "Arial",
          "textjustification": 0,
          "varname": "velocitylabel"
        }
      },
      {
        "box": {
          "id": "gatelabel",
          "maxclass": "comment",
          "text": "Length",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            4,
            131,
            32,
            14
          ],
          "patching_rect": [
            4,
            127,
            32,
            14
          ],
          "textcolor": [
            0.65,
            0.65,
            0.65,
            1
          ],
          "fontname": "Arial",
          "textjustification": 0,
          "varname": "gatelabel"
        }
      },
      {
        "box": {
          "id": "segmentscaption",
          "maxclass": "comment",
          "text": "Segments",
          "fontname": "Arial",
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            4,
            24,
            42,
            12
          ],
          "patching_rect": [
            4,
            21,
            42,
            12
          ],
          "varname": "segmentscaption"
        }
      },
      {
        "box": {
          "id": "densitycaption",
          "maxclass": "comment",
          "text": "Density",
          "fontname": "Arial",
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            50,
            24,
            52,
            12
          ],
          "patching_rect": [
            48,
            8,
            52,
            12
          ],
          "varname": "densitycaption"
        }
      },
      {
        "box": {
          "id": "registercaption",
          "maxclass": "comment",
          "text": "Octave",
          "fontname": "Arial",
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "textjustification": 1,
          "presentation": 1,
          "presentation_rect": [
            105,
            24,
            42,
            12
          ],
          "patching_rect": [
            106,
            21,
            42,
            12
          ],
          "varname": "registercaption"
        }
      },
      {
        "box": {
          "id": "rootlabel",
          "maxclass": "comment",
          "text": "Start",
          "fontsize": 9,
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            4,
            2,
            27,
            15
          ],
          "patching_rect": [
            4,
            2,
            27,
            15
          ],
          "varname": "rootlabel"
        }
      },
      {
        "box": {
          "id": "rootdisplay",
          "maxclass": "live.menu",
          "fontsize": 10,
          "textcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "bgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "bgcolor2": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "presentation": 0,
          "presentation_rect": [
            30,
            3,
            42,
            14
          ],
          "patching_rect": [
            31,
            2,
            42,
            14
          ],
          "parameter_enable": 1,
          "varname": "start",
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "annotation": "Starting scale degree",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Start degree",
              "parameter_shortname": "Start",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 11,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "Root",
                "II",
                "III",
                "IV",
                "V",
                "VI",
                "VII",
                "VIII",
                "IX",
                "X",
                "XI",
                "XII"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "segmentsreadout",
          "maxclass": "comment",
          "text": "4",
          "fontsize": 9,
          "fontname": "Arial",
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "textjustification": 1,
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            4,
            78,
            42,
            13
          ],
          "patching_rect": [
            760,
            1275,
            42,
            13
          ],
          "varname": "segmentsreadout"
        }
      },
      {
        "box": {
          "id": "segmentsreadoutset",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            670,
            1300,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "densityreadout",
          "maxclass": "comment",
          "text": "100",
          "fontsize": 9,
          "fontname": "Arial",
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "textjustification": 1,
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            50,
            78,
            52,
            13
          ],
          "patching_rect": [
            760,
            1325,
            52,
            13
          ],
          "varname": "densityreadout"
        }
      },
      {
        "box": {
          "id": "densityreadoutset",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            670,
            1350,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "registerreadout",
          "maxclass": "comment",
          "text": "4",
          "fontsize": 9,
          "fontname": "Arial",
          "textcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "textjustification": 1,
          "ignoreclick": 1,
          "presentation": 1,
          "presentation_rect": [
            105,
            78,
            42,
            13
          ],
          "patching_rect": [
            760,
            1375,
            42,
            13
          ],
          "varname": "registerreadout"
        }
      },
      {
        "box": {
          "id": "registerreadoutset",
          "maxclass": "newobj",
          "text": "prepend set",
          "patching_rect": [
            670,
            1400,
            80,
            22
          ]
        }
      },
      {
        "box": {
          "id": "startmsg",
          "maxclass": "newobj",
          "text": "prepend start",
          "patching_rect": [
            700,
            20,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "motion",
          "maxclass": "live.numbox",
          "parameter_enable": 1,
          "varname": "motion",
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Motion",
              "parameter_shortname": "Motion",
              "parameter_type": 1,
              "parameter_mmin": 0,
              "parameter_mmax": 100,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_unitstyle": 5
            }
          },
          "presentation": 1,
          "presentation_rect": [
            115,
            98,
            34,
            13
          ],
          "patching_rect": [
            720,
            180,
            34,
            13
          ],
          "annotation": "Motion",
          "showname": 0,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "fontname": "Arial",
          "hint": "Melodic movement inside chords; zero keeps sustained chords.",
          "textcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "bordercolor": [
            0.12,
            0.12,
            0.12,
            1
          ],
          "activetextoncolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoffcolor": [
            0.72,
            0.72,
            0.7,
            1
          ],
          "appearance": 1,
          "triangle": 0
        }
      },
      {
        "box": {
          "id": "motionlabel",
          "maxclass": "comment",
          "text": "Motion",
          "fontsize": 9,
          "fontname": "Arial",
          "textcolor": [
            0.65,
            0.65,
            0.65,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            79,
            97,
            35,
            14
          ],
          "patching_rect": [
            720,
            160,
            35,
            14
          ],
          "textjustification": 0,
          "varname": "motionlabel"
        }
      },
      {
        "box": {
          "id": "motionmsg",
          "maxclass": "newobj",
          "text": "prepend motion",
          "patching_rect": [
            720,
            210,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "rootdisplayselect",
          "varname": "rootdisplayselect",
          "maxclass": "jsui",
          "filename": "chord_select.js",
          "jsarguments": [
            "start",
            0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "presentation": 1,
          "presentation_rect": [
            30,
            3,
            42,
            14
          ],
          "patching_rect": [
            30,
            3,
            42,
            14
          ],
          "border": 0,
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            0
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            0
          ]
        }
      },
      {
        "box": {
          "id": "octavesselect",
          "varname": "octavesselect",
          "maxclass": "jsui",
          "filename": "chord_select.js",
          "jsarguments": [
            "size",
            1
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "presentation": 1,
          "presentation_rect": [
            101,
            3,
            48,
            14
          ],
          "patching_rect": [
            101,
            3,
            48,
            14
          ],
          "border": 0,
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            0
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            0
          ]
        }
      },
      {
        "box": {
          "id": "patternselect",
          "varname": "patternselect",
          "maxclass": "jsui",
          "filename": "chord_select.js",
          "jsarguments": [
            "voice",
            0
          ],
          "numinlets": 1,
          "numoutlets": 1,
          "presentation": 1,
          "presentation_rect": [
            115,
            115,
            34,
            13
          ],
          "patching_rect": [
            105,
            132,
            34,
            13
          ],
          "border": 0,
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            0
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            0
          ]
        }
      },
      {
        "box": {
          "id": "progressionbutton",
          "varname": "progressionbutton",
          "maxclass": "jsui",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            79,
            131,
            70,
            15
          ],
          "patching_rect": [
            79,
            131,
            70,
            15
          ],
          "hidden": 0,
          "bgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "textcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "border": 0,
          "filename": "chord_action.js",
          "jsarguments": [
            "Progressions"
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "progressionbuttonmsg",
          "maxclass": "message",
          "text": "page 1",
          "patching_rect": [
            800,
            400,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "backbutton",
          "varname": "backbutton",
          "maxclass": "jsui",
          "fontsize": 9,
          "presentation": 1,
          "presentation_rect": [
            79,
            131,
            70,
            15
          ],
          "patching_rect": [
            79,
            131,
            70,
            15
          ],
          "hidden": 1,
          "bgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "textcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "border": 0,
          "filename": "chord_action.js",
          "jsarguments": [
            "Back"
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "backbuttonmsg",
          "maxclass": "message",
          "text": "page 0",
          "patching_rect": [
            800,
            400,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "preset",
          "varname": "preset",
          "maxclass": "live.menu",
          "parameter_enable": 1,
          "presentation": 0,
          "presentation_rect": [
            3,
            3,
            122,
            17
          ],
          "patching_rect": [
            3,
            26,
            122,
            17
          ],
          "hidden": 1,
          "fontsize": 9,
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "activetextcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Progression preset",
              "parameter_shortname": "Preset",
              "parameter_type": 2,
              "parameter_mmin": 0,
              "parameter_mmax": 3843,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                0
              ],
              "parameter_enum": [
                "I I IM-5 IM-5 IV IV V Vsus2",
                "I I IV iii",
                "I I7 Idom7 I7",
                "I I7 Idom7 IV",
                "I IV Isus2 IV",
                "I IV V",
                "I IV V IV",
                "I IV ii V",
                "I IV vi V",
                "I IV vii iii vi ii V I",
                "I V I IV",
                "I V IV vi",
                "I V vi IV",
                "I V vi V",
                "I V vi ii",
                "I V vi iii IV",
                "I V vi iii IV I IV V",
                "I iii IV vi",
                "I iii vi IV",
                "I iii vi Isus4",
                "I vi I IV",
                "I vi IV V",
                "I vi IV iii",
                "I vi ii IV",
                "I vi ii V",
                "I7 V7 viadd9 IV7",
                "IV I IV6 Iadd9",
                "IV I V vi",
                "IV I ii vi",
                "IV I iii IV",
                "IV IV I V",
                "IV vi I V",
                "IV vi IV vi",
                "IV vi iii I",
                "Isus2 I vi7 visus4",
                "V I vi V",
                "V IV vi I",
                "V vi IV I",
                "ii IV V",
                "ii IV vi V",
                "ii V I",
                "ii V I IV",
                "ii7 Vadd9 I7",
                "iii vi IV I",
                "iim7 V7 iiim7 vi7 iim7 V7",
                "vi IV I V",
                "vi IV iii V",
                "vi V IV V",
                "vi V IV V ii V I I",
                "vi ii V I",
                "VI III i v",
                "VI VI i VII",
                "VI VII i III",
                "VI VII i III VII VI iv i",
                "VI VII v III",
                "VI i v",
                "VI i v III",
                "VI iv i v",
                "VI7 VII i v VI7 VII i iv7",
                "VI7 VII6 i VII6",
                "VII iv VII i",
                "VII iv v i",
                "i III VII VI",
                "i III VII iv",
                "i III iv VI",
                "i III7 VI7 iv",
                "i VI III VII",
                "i VI III VII i VI69 III7 VII",
                "i VI VII",
                "i VI VII iv",
                "i VI VII v",
                "i VI iv III",
                "i VI iv ii",
                "i VI iv v",
                "i VII III VI",
                "i VII VI III",
                "i VII VI III iv VI VII i",
                "i VII VI VII",
                "i VII VI iv",
                "i VII VIadd9 VII i v VI VIIsus4",
                "i VII i v",
                "i VII i v III VII i v i",
                "i VII v VI",
                "i i iv iv v7 ii5 v v7",
                "i ii v III i ii v VII",
                "i ii v i",
                "i iv III VI",
                "i iv VI v",
                "i iv VII i",
                "i iv VII v i i ii V",
                "i iv v",
                "i iv v iv",
                "i v iv VII",
                "i vdim iv VI",
                "i7 VI III7 VII6 i i7 III7 iv7",
                "i7 VII VI7 iv7",
                "ii VI i iv",
                "ii v i",
                "ii v i iv",
                "im7 ivsus4 v7 isus4",
                "iv III VII i",
                "iv III vsus4 VI iv i III VI",
                "iv VI VII i",
                "iv VI v VII",
                "iv i v VI",
                "iv v VI VII",
                "v VI III i",
                "v VI v i",
                "v i iv VII",
                "v iv i",
                "I I7 I9 IV ivm",
                "I I7 Idom7 IV ivm I",
                "I I7 Idom7 IV ivm I ivm6 Vdom7",
                "I IIIM vi V",
                "I IIM IV I",
                "I IIM iii V6",
                "I IV V bVIIM",
                "I IV bIIIM bVIM",
                "I IV bVIIM IV",
                "I V bVIIM IV",
                "I V ivm bVIM",
                "I bIIIM IV I",
                "I bIIIM bVIIM I",
                "I bIIIM bVIIM IV",
                "I bIIIM bVIM bVIIM",
                "I bIIM I iii",
                "I bIIM7 bIIIM6 bIIM7 I im bVIIM bIIM",
                "I bVIIM I I bVIM V",
                "I bVIIM IV V",
                "I bVIIM bVIM IV IVsus4 IV",
                "I bVIIM bVIM bIIM",
                "I bVIM I bIIM",
                "I bVIM IV bIIIM bVIIM",
                "I bVIM bVIIM ivm",
                "I im bVII6 bVIM",
                "I ivm bIIIM bVIIM",
                "I ivm6 I I7",
                "I vi bVIM V",
                "I5 iii II5 #IVm IV5 vi V5 viim",
                "I7 bIdom7 III7 ii7 V7",
                "IIIM V VIsus4 VIM I IIM",
                "IV V ii im bIIIM IV",
                "VIM bVIM im bVIIM",
                "bIIIM V7 I",
                "bIIIM ii bIIM I",
                "bIIM bVIM biii bviim",
                "bIIM ivm biii im",
                "bVIIM V7 I",
                "bVIIM bIIM bIIIM im",
                "bVIM bIIIM bVIIM IV I",
                "bVIM bVIIm im bIIM",
                "bVIM vi im bVIIM",
                "bVIM7 ivmadd9 I",
                "bviim I_bVII bviim I_bVII",
                "ii IVM vm bVIIM",
                "ii bIIM I bVIIM",
                "ii bVIIM7 I",
                "iii im iii im7",
                "im V bVIIM IV bVIM bIIIM ivm V",
                "im VIM IIIM bIIM",
                "im VIM bi V",
                "im bIIIM IV V",
                "im bIIIM IV bVIM",
                "im bIIIM bVIIM IV",
                "im bIIIM bVIM V",
                "im bIIIsus2 IV",
                "im bIIM bIIIM bIIM",
                "im bIIM biim6 ivm",
                "im bIIM im7 bviim",
                "im bIIM ivm IIIM bIIM ivm IIIM IIIM",
                "im bIIM vm im7",
                "im bVIIM IV im",
                "im bVIIM IV im",
                "im bVIIM bIIM vm",
                "im bVIM im IV",
                "im bVIM ivm V",
                "im bviim bVIM bIIM",
                "im ii vm IV",
                "im ivm9 bIIM im",
                "im ivm9 bIIM im vm ivm7 bIIM im7",
                "im viim_i im bii_i",
                "im vm bVIIM IV",
                "im vm bVIM bIIM",
                "im vm isus4 I",
                "im vm ivm bIIM7",
                "ivm IIIM bIIM I",
                "ivm bIIIM bIIM I",
                "ivm bIIIM bVIM I",
                "ivm bIIIM iim7 V",
                "ivm im bviim bVIM",
                "vdim vdim ivm bIIIM",
                "vi IV I IIM",
                "vi bVIIM im bVIM",
                "vi bVIM bVIIM I",
                "vi viim V vi #IVdim V",
                "I I II I II II bIII IV",
                "I bIII bVII bVII I bII I bVII",
                "I I bVII bVII bIII I bVII bII",
                "I V V VI VI VI V bVII",
                "I II II IV I bIII II I",
                "I bVII bIII bII I bVII I bVII",
                "I bVII bIII bVII bII I bVII I",
                "I VII VII VI VII VI VI II",
                "I VI VI VII VII VI VII II",
                "I VII II VI VII VI VI VII",
                "I I bVII bVII bIII bII bVII I",
                "I bVII bII bVII I I bIII bVII",
                "I bIII I IV I II II II",
                "I II bIII IV I II I II",
                "I VI II VI VII VI VII VII",
                "I bVII bII I bIII bVII bVII I",
                "I III I VI III",
                "I II VI III",
                "I bII bVI bVI",
                "I bVII bVII bII",
                "I I I I",
                "I bVII V II",
                "I V V I",
                "I V II III",
                "I bIII bVII bVI bIII",
                "I I V IV",
                "I II bIII II bVII",
                "I I I VI VI VI",
                "I bII bVII I",
                "I III III II VI",
                "I I III I III",
                "I II V V",
                "I I I IV",
                "I II VII I",
                "I III V VI IV",
                "I bII bVII bVII",
                "I I bIII bIII I",
                "I bVI bVI V bVI bVII",
                "I bVII I V V",
                "I bIII bVII bIII",
                "I VII VI VI",
                "I VI VII III",
                "I II IV III V III",
                "I bII I bII",
                "I II II I",
                "I VI III I",
                "I bVII bVII IV bVII",
                "I I VII VI VII III",
                "I V II bVII bIII II",
                "I bVII bVII I",
                "I bVII bIII bVI",
                "I I V VI III II",
                "I VI IV V II",
                "I III I I",
                "I VII III I",
                "I bIII bVII bVII",
                "I II bIII bIII IV bIII",
                "I bII I I",
                "I II V III",
                "I I IV V",
                "I IV bIII I",
                "I II V II bVII",
                "I V bIII bVII IV bVI",
                "I VI III VII",
                "I V bVI bVI bIII bVI",
                "I VII VII VI",
                "I V V V",
                "I bIII II I bIII",
                "I I bVI IV IV bVII",
                "I bVII VI IV VI",
                "I VII VI I",
                "I bVI bIII bVII",
                "I I I I IV II",
                "I I II II",
                "I I I I",
                "I I bVI bIII",
                "I VII II I",
                "I bVI bVII bIII",
                "I I V V",
                "I VII V VII",
                "I VII I VII I V",
                "I V I III I",
                "I IV I I IV",
                "I bVII VI VI bVII IV",
                "I V II VII",
                "I II IV IV III",
                "I VI V bVII II",
                "I bIII I V",
                "I I bVI V",
                "I VII VI I",
                "I bVI bIII IV",
                "I V bVII bVII",
                "I bII bVII I I",
                "I bII bVII I",
                "I bVII I I",
                "I VII I VI",
                "I V III IV",
                "I bVI bVI IV",
                "I II VII I",
                "I I II VI",
                "I I VII II I",
                "I I bVI bVI",
                "I VI V IV III I",
                "I V II II",
                "I IV bVII bVI",
                "I IV IV IV V IV",
                "I IV bII bIII",
                "I IV bVI V IV",
                "I V V bVII IV",
                "I bII I bVII",
                "I V IV IV",
                "I V II II",
                "I I bII I",
                "I I IV I",
                "I I bII bII",
                "I I bVII bVII I",
                "I IV IV I III III IV V VI VI",
                "I I I III V IV I VI",
                "I II VI VI bVII VI I bVII",
                "I IV bVI bVI bIII I bIII bIII",
                "I I III V III V V VII VII",
                "I III IV III I III VI IV I",
                "I bIII V II V bIII bVI bVI",
                "I bIII IV I bII I IV bVI",
                "I I VII III V I VII VII III",
                "I I bIII bVI IV bII",
                "I I I III V III I I",
                "I III I III III I IV I",
                "I III III IV I IV",
                "I V IV III IV I",
                "I IV I VI III VI I",
                "I V VI IV IV III III III",
                "I VI IV III V IV I",
                "I I bVI bVI bVI bVI I I bVI",
                "I IV I VI VI I I III III",
                "I III I V III V V",
                "I bIII bVI V V V V bIII bIII",
                "IV vi IV iii vi iii vi vi",
                "IV vi IV ii iii vi IV",
                "I IV ii V vi IV ii",
                "I IV ii vi ii iii I",
                "V I I I iii iii vi",
                "V I iii IV IV",
                "V iii I V ii",
                "V iii ii vi vi ii vi IV",
                "V vi V vi iii vi",
                "ii ii vi vi I ii ii iii",
                "ii iii IV IV I IV V",
                "ii vi iii I vi IV iii",
                "iii I iii IV ii IV I V",
                "iii V V I IV V",
                "iii iii ii iii vi I vi",
                "vi ii IV iii ii ii ii",
                "vi vi V vi IV vi I",
                "IV V I I ii ii",
                "vi I IV IV V iii IV",
                "IV IV V I I iii",
                "IV V ii V I IV ii ii",
                "IV V ii vi iii I vi vi",
                "IV V vi iii I vi iii",
                "IV iii IV iii IV I iii",
                "IV iii iii vi I vi vi",
                "IV IV V iii vi vi",
                "I IV V V iii I IV",
                "I I IV vi V IV IV",
                "I V I ii iii iii V",
                "I ii I iii ii",
                "I vi V iii IV ii vi",
                "V ii IV V V ii iii",
                "ii vi V ii iii I I ii",
                "ii iii V vi V IV",
                "iii IV ii V iii IV ii V",
                "vi ii IV V I V V I",
                "vi vi I iii ii I ii",
                "ii I IV V ii iii",
                "ii V IV ii iii V",
                "vi IV iii ii V vi",
                "III i v iv III III VII VI",
                "III VI VI v VI",
                "VII VII VII VI VII",
                "VII i VII iv III VI i VI",
                "VII iv VII III VI",
                "VII iv III i v iv iv",
                "VII v i VII VI i iv VII",
                "VI III VII VII III VII i",
                "VI III i VI III",
                "VI VI v iv i iv v v",
                "i VI i v iv v",
                "III v VII iv VII VI",
                "iv VII VII iv VI III",
                "iv VI iv i v III VII",
                "iv VI VII iv iv i III",
                "iv v i iv VI iv v III",
                "iv v VI VII VI VII",
                "v VI i VI i VI VI",
                "v i iv i VII VII VI",
                "v v VI i VII VI",
                "IV vi ii ii IV IV iii iii",
                "I I ii I vi ii iii V",
                "I I iii vi vi",
                "V I IV V ii ii ii iii",
                "V I I IV ii ii vi ii",
                "V V vi I vi I ii",
                "V ii V vi I V V ii",
                "V ii ii V vi IV",
                "ii IV ii V I V",
                "ii V I iii vi ii",
                "ii V vi I V ii IV",
                "ii vi I vi V I ii",
                "ii vi ii IV V iii vi",
                "iii vi I ii ii",
                "iii I ii V iii vi",
                "vi IV V ii iii IV",
                "vi IV vi vi iii I vi IV",
                "I IV IV ii vi ii",
                "V V ii V I ii IV",
                "vi ii ii I IV iii IV",
                "IV IV vi IV ii vi I I",
                "IV V IV vi vi iii ii V",
                "IV ii I ii iii ii vi vi",
                "IV ii ii vi ii vi iii V",
                "IV vi iii V ii I",
                "V I I V vi iii I",
                "V I ii V I I IV",
                "ii IV vi ii iii vi I I",
                "ii V I iii iii IV vi V",
                "ii iii iii V vi V",
                "iii vi V vi IV vi vi ii",
                "vi IV ii vi I IV ii iii",
                "vi iii I IV vi ii IV V",
                "IV IV IV IV IV vi",
                "V vi ii vi",
                "iii V iii vi vi IV IV",
                "iii vi ii ii IV IV iii",
                "vi iii IV V ii IV",
                "I I ii",
                "vi I ii iii iii",
                "III iv III iv i VI i",
                "III v v VII III v VII",
                "VII III v VI VI v",
                "VII VI v iv III iv",
                "VII v VII III iv III III III",
                "VII v VI VI iv VI VII",
                "VI VI VII v iv III III iv",
                "VI i VII iv iv i v v",
                "VI i v III VI III",
                "VI III III iv i iv i",
                "i VI i VII v VI VI",
                "i v iv iv i VII iv VI",
                "VII VII III v v v III",
                "VI v III VI III iv VII",
                "i i i III iv VII III",
                "i iv v III iv",
                "iv i v iv VI III III III",
                "v VI v iv iv III",
                "v iv VI VI VI v v",
                "v v iv iv i III",
                "III VII VI v III VI III",
                "III iv VI i VII iv",
                "III v VII VI i VI v VI",
                "VI VII III III i v iv v",
                "VI VII iv i v VI VI",
                "VI i v v i VI v",
                "VI iv v v iv v VII",
                "i III VII VI VII v iv VI",
                "i i i v VII iv v",
                "i i v v iv iv iv VII",
                "i iv i i i VI",
                "i v VI VI VI iv III III",
                "III VII v VII",
                "v VII VII i iv III",
                "iv III VI v i i iv",
                "iv VI v III iv VI VI",
                "v III iv VI i VII",
                "v VII VI VI iv III III v",
                "v VII iv v v iv v",
                "v i III VI v VI iv",
                "IV IV V iii IV ii I",
                "IV ii IV I I ii",
                "IV ii V vi iii ii IV I",
                "I iii I ii IV IV V IV",
                "I iii V vi ii",
                "I vi iii ii ii vi ii",
                "V iii I iii iii iii IV",
                "V IV ii ii",
                "ii IV I V vi I vi iii",
                "ii I iii IV vi iii I iii",
                "ii vi I vi ii V",
                "iii I vi V V vi IV iii",
                "iii V iii ii vi IV ii",
                "vi ii V ii ii V I I",
                "vi ii vi I I I V iii",
                "vi iii V iii IV I V ii",
                "vi iii iii vi V I I",
                "vi vi IV vi V I ii iii",
                "vi vi I IV I vi ii vi",
                "I V IV I ii iii",
                "I I I II I II I I",
                "IV IV IV vi I iii V",
                "IV I I V V ii",
                "IV V V V I ii V I",
                "IV iii I IV iii iii ii",
                "IV V IV V IV I",
                "IV iii iii IV I",
                "I IV vi V ii IV IV V",
                "I ii IV V iii I",
                "V IV I I V I IV",
                "V V IV I iii ii ii",
                "V V I ii vi ii iii iii",
                "V iii I I I IV",
                "ii ii V I I iii V IV",
                "iii I IV IV I V I",
                "iii IV ii iii ii IV I",
                "vi IV I vi I V IV",
                "vi ii V vi I V iii ii",
                "vi ii ii IV ii V ii",
                "IV ii ii IV ii I IV",
                "I I V IV vi I",
                "I bVII bVII I bVII I bVII I",
                "IV V iii V ii iii V",
                "IV IV ii ii vi V V",
                "I V I I IV V ii ii",
                "I V IV iii V I ii",
                "I vi I I IV vi iii",
                "V I ii vi ii V V",
                "V vi V vi ii iii I V",
                "V V I vi I",
                "V ii V vi iii vi",
                "ii V I iii IV ii I vi",
                "ii ii I iii vi iii",
                "ii iii vi I vi vi vi iii",
                "iii IV V IV",
                "vi IV V vi I ii vi IV",
                "vi iii ii ii V V",
                "vi iii IV V iii IV vi",
                "I iii IV I IV iii",
                "V vi I IV iii",
                "vi I vi iii IV ii",
                "V vi iii ii",
                "IV I ii iii V V iii V",
                "IV ii I vi vi V IV vi",
                "I IV iii I IV IV I I",
                "I IV vi ii ii IV iii",
                "I iii I vi iii I IV",
                "V IV ii IV I iii I",
                "V IV vi iii ii IV V",
                "V V iii V iii I IV IV",
                "V vi iii V IV ii vi vi",
                "ii V ii iii IV vi V V",
                "ii ii V I I IV V iii",
                "ii vi I ii iii iii ii V",
                "iii IV iii vi vi I V ii",
                "iii IV iii IV ii IV",
                "vi I I vi V I iii vi",
                "vi I vi ii iii iii vi IV",
                "vi V I ii I I ii",
                "vi ii vi vi vi vi I",
                "IV iii iii I iii vi iii",
                "V iii ii IV I IV",
                "IV ii ii I ii ii I",
                "IV ii ii V V V",
                "IV vi IV IV ii iii iii",
                "IV vi iii ii IV ii ii",
                "IV vi ii V V I",
                "V IV vi iii V iii",
                "V ii ii ii I ii iii I",
                "V V V ii IV vi IV",
                "V vi V ii IV IV",
                "ii IV IV ii ii ii iii iii",
                "ii ii ii I I",
                "ii vi iii V iii ii I",
                "iii I vi I ii vi",
                "iii iii V ii iii",
                "iii IV I I vi V V",
                "vi V iii I IV I vi IV",
                "I vi I vi I vi ii",
                "I vi IV IV iii I",
                "iii V I I iii ii",
                "V V IV vi ii vi",
                "III III III v i III VII",
                "III III VII v VI III III",
                "III VI v iv iv v i",
                "III v iv v iv v",
                "VII III VI v i VI VII III",
                "VII VI iv III i iv VII",
                "VII i v v v iv VI VII",
                "VI III v i VI v i",
                "VI i v iv III",
                "i i III i i iv i VII",
                "i i iv III VI VII",
                "i iv VII III VII v v",
                "i iv VII VI VII i v",
                "iv iv III III III iv III",
                "v iv VII VII VII iv",
                "iv VII v III i III v",
                "iv i iv III VII iv VI",
                "iv v iv VII v",
                "v III v VI v v VI",
                "v VII VI iv VI iv VII VI",
                "IV IV I vi iii vi iii",
                "IV IV ii I vi ii iii IV",
                "IV iii ii ii iii vi V",
                "V IV V vi iii IV",
                "V I vi I iii I I",
                "ii IV ii vi iii IV ii",
                "iii IV I ii iii vi iii",
                "iii I V IV V ii",
                "iii I vi ii IV iii I",
                "iii iii ii I iii",
                "vi IV iii iii I I",
                "vi V V V vi I vi ii",
                "vi V ii iii iii IV V",
                "vi V iii IV V iii iii",
                "vi ii ii vi ii ii iii iii",
                "vi vi V V IV vi ii",
                "IV iii V iii iii I",
                "iii IV iii vi IV IV",
                "iii I IV vi I I",
                "iii I ii vi IV ii IV",
                "IV iii vi vi IV iii IV",
                "IV IV V IV V ii IV",
                "I IV ii IV V vi V",
                "I V iii IV I vi V iii",
                "I ii V IV I ii vi IV",
                "I iii I ii iii iii V IV",
                "I ii IV iii vi V ii",
                "V IV ii I ii",
                "V I ii ii iii ii ii I",
                "ii IV IV V V I IV",
                "ii ii I V vi I",
                "ii iii vi vi ii iii vi",
                "iii ii vi I I vi vi",
                "vi IV I ii iii IV IV",
                "vi V ii IV ii V I",
                "vi ii vi vi vi ii V IV",
                "vi vi IV IV I iii IV",
                "vi I I ii IV ii IV",
                "vi I ii IV V",
                "ii ii iii I ii",
                "III III iv III i i III iv",
                "III VII i i i VII i",
                "VII i III i VI VII VII",
                "VII v III VII iv VI VI",
                "VI III VI VI III i",
                "VI iv VII i VII i VI",
                "i III v iv i VII iv",
                "i iv III VI iv v III iv",
                "i v v i i VI",
                "III v VII iv VI iv VI",
                "III v VI III III III III",
                "III i III III v",
                "i v VI VI III",
                "iv iv i VII VI",
                "v iv VII v i",
                "iv iv VI III i",
                "iv III VII iv v iv v",
                "iv iv iv VI III VII",
                "v v i v v v i",
                "v v iv III i i",
                "III III iv VI VII i VI v",
                "III III iv VI v III III i",
                "III VII III III VI v VII",
                "III iv v VII VI VI III",
                "VII v VI VII III i iv i",
                "VII v i VII v v VI VI",
                "VI VII i VII III VI v i",
                "VI i i VI III VII VII VII",
                "i III VII i i i VI v",
                "i VI VI VII VII",
                "i i VII VI i i III",
                "i v v v III III VII",
                "VII III v III i III",
                "VII VII i VI iv VII i",
                "iv VII v VII VII i",
                "iv iv iv VI VII i v i",
                "iv v i iv VII iv iv",
                "v III i III VII i VI",
                "v i III III i VI",
                "v iv VI VII iv iv III",
                "IV ii I ii IV iii",
                "IV ii vi IV IV V ii ii",
                "IV iii vi vi vi ii I IV",
                "IV IV IV I I iii",
                "I IV iii I iii vi iii iii",
                "I ii ii I I IV I",
                "I iii iii V vi vi vi",
                "I vi ii iii IV IV",
                "ii IV IV IV IV I ii",
                "ii IV V IV I vi ii ii",
                "ii I I iii iii IV",
                "iii I IV V iii ii",
                "iii I ii IV I iii I",
                "iii I iii I iii IV V",
                "iii V iii iii V iii ii vi",
                "iii iii IV IV I IV vi",
                "vi ii ii ii V ii V",
                "ii IV iii I V",
                "iii I vi IV IV IV iii",
                "vi iii IV vi vi vi",
                "IV I V I ii iii I ii",
                "IV iii I IV vi IV I",
                "I ii iii iii iii iii",
                "V IV I ii iii vi iii",
                "V V IV V ii V iii",
                "V V iii ii V iii V V",
                "V V vi V vi iii",
                "V vi ii ii I IV ii",
                "V V vi V I I ii",
                "V iii iii I vi vi V",
                "ii I IV iii IV V",
                "ii iii IV IV I IV ii",
                "iii V V IV IV IV",
                "vi IV IV vi IV vi I",
                "vi IV V V ii IV",
                "vi I iii ii IV ii I vi",
                "vi iii iii V V vi I",
                "vi I I V V iii",
                "vi iii vi IV IV vi",
                "IV iii ii vi IV I IV",
                "I I II III I II III I",
                "IV I ii I vi iii vi",
                "IV V I vi ii ii V",
                "IV I ii vi iii iii",
                "I I ii vi ii ii I ii",
                "I vi vi iii vi vi V iii",
                "V I vi iii vi IV vi ii",
                "V V ii IV I V",
                "V V iii vi IV ii IV V",
                "V iii iii I iii vi IV",
                "V iii iii vi ii IV",
                "ii IV iii IV V V V V",
                "ii V IV vi I iii V I",
                "iii ii IV IV iii IV vi ii",
                "iii V ii I IV",
                "vi I vi vi vi ii",
                "vi I I vi ii",
                "vi ii IV iii iii IV I IV",
                "vi IV iii iii ii",
                "iii V vi ii iii vi",
                "vi V IV V IV vi",
                "IV IV ii V ii IV ii",
                "IV V IV I IV I IV",
                "IV ii iii IV I iii V",
                "IV iii I ii iii ii vi",
                "IV vi IV IV IV IV",
                "IV vi ii ii iii IV IV",
                "I I V ii vi ii I",
                "I V ii I ii V ii",
                "V I iii V I vi vi I",
                "ii I iii I iii IV I I",
                "ii ii IV I vi I I vi",
                "ii vi ii ii IV ii",
                "iii I ii vi iii ii IV",
                "iii V iii IV V V IV",
                "iii ii vi V iii",
                "vi vi iii ii vi ii ii I",
                "IV IV I I V I ii",
                "I vi V ii IV vi IV",
                "V ii IV I I ii iii",
                "ii IV I I I ii",
                "VII III iv v v v",
                "VII i III v III III",
                "VI VI iv III iv III III",
                "VI v v iv i v VI",
                "i III III III III v i III",
                "i III iv i i i i",
                "i III iv VII i III iv i",
                "i v VI VII v iv iv",
                "III VI III VII i iv",
                "i VII III VII VI",
                "i VII III iv v i",
                "i III v VI VI",
                "i iv III i i i",
                "iv VII i v VI i",
                "v i i v i i v",
                "iv iv VI iv iv v v",
                "iv iv iv III VI III",
                "v VI v III iv i VII iv",
                "v iv VII iv iv VII iv",
                "v v III VI i v VII VI",
                "IV I V vi vi vi",
                "IV iii I I IV ii vi V",
                "IV iii V IV vi I",
                "I V iii IV iii ii",
                "I V IV vi",
                "V I iii vi I V IV iii",
                "V ii V I I I IV",
                "V ii ii V vi vi ii",
                "ii V V vi iii vi V",
                "ii iii IV iii V ii",
                "ii vi ii IV vi V",
                "iii I V V V V V",
                "iii V ii vi V vi I",
                "iii ii I ii vi vi ii",
                "iii iii I vi vi V IV",
                "iii vi V IV ii vi IV",
                "iii vi V vi iii V iii IV",
                "vi vi ii I I ii iii vi",
                "vi vi IV V ii",
                "iii I IV IV iii V",
                "IV iii vi IV IV I I",
                "IV vi V IV IV IV vi vi",
                "I I V V IV ii iii",
                "I iii I V vi IV I IV",
                "V V ii iii vi",
                "V ii ii IV I I vi V",
                "V IV I IV V vi",
                "V iii ii iii I iii",
                "V iii iii V IV iii iii",
                "ii I V vi iii I iii I",
                "ii V V iii V V",
                "ii vi I I V vi I V",
                "ii IV ii ii ii V iii",
                "iii I IV ii I I ii iii",
                "iii I IV V I iii I",
                "iii I vi IV I I",
                "vi V IV IV ii I V",
                "vi V iii IV I IV ii",
                "vi vi V ii I ii",
                "IV vi iii IV I ii",
                "III i VI iv v III III",
                "VII III III iv v iv VI i",
                "VII VII III v v III VII",
                "VII VI VII v III iv",
                "VI VII VI III v III v i",
                "VI v v iv III",
                "i III i VII iv iv iv VI",
                "i VII III iv VI iv iv",
                "i VII i VII v VII III",
                "i VII v III iv v",
                "i iv VII iv III VII i",
                "VI iv VI i III iv",
                "iv III VII v i VI iv",
                "iv VII v i III iv",
                "iv i VII III i v VI VII",
                "iv i VI v III III III",
                "iv v iv VII VI i v",
                "v III v iv iv v",
                "v VI III v v III VII",
                "v v VI i VII III v",
                "III i VII iv VI VI",
                "III v v iv III III i VII",
                "VII III iv v iv v VI",
                "VII VII i v i III VI",
                "VI iv iv i v VII i",
                "i VI iv i III VII",
                "i iv i v III v i",
                "III VII III III v i v",
                "III VI v III VI III iv",
                "VII VII VII VI v",
                "VII VI iv i VII VII",
                "iv VI VI VII v i VI",
                "iv i III iv VI III iv",
                "iv iv VII VII iv III v",
                "iv v VII v VI i v VI",
                "v III iv iv v",
                "v III v iv III i v",
                "v VII iv VII III VI",
                "v v III VI i i",
                "v iv VI v III iv VII",
                "IV V I iii ii V ii",
                "IV vi iii V V vi V",
                "I iii IV ii V iii iii",
                "I iii ii ii ii I vi",
                "V V I ii ii iii vi ii",
                "V V ii vi IV I V",
                "ii V V I ii iii",
                "ii ii I IV I ii ii vi",
                "iii I V ii IV IV V",
                "iii iii IV vi IV ii V I",
                "iii iii I IV I ii V I",
                "vi V vi vi I",
                "vi ii iii I vi I IV",
                "IV ii V vi vi V IV",
                "V ii V I I I",
                "V iii ii IV V V",
                "ii ii V IV iii ii vi",
                "vi V iii ii IV",
                "I vi ii iii iii",
                "vi ii vi I ii",
                "IV IV IV IV I I",
                "IV iii vi V ii vi iii iii",
                "IV I vi iii ii IV iii",
                "I IV IV V IV vi IV",
                "I V V ii V I V V",
                "I ii IV ii I vi IV iii",
                "I ii V I iii V",
                "V ii vi iii ii I ii iii",
                "V vi ii IV I V ii",
                "ii IV V I IV",
                "ii V ii vi iii IV IV",
                "ii ii iii ii IV iii ii",
                "ii vi I IV I I vi",
                "ii vi vi I iii iii",
                "iii IV IV vi I vi V iii",
                "iii ii I IV iii I iii V",
                "vi I iii I vi iii V IV",
                "iii ii I ii ii I I",
                "vi V V ii iii V",
                "vi iii ii vi ii",
                "IV I IV IV iii V",
                "IV iii ii IV iii IV V",
                "IV I iii iii iii",
                "V I I vi vi ii vi I",
                "V I ii iii vi I V IV",
                "V V IV V vi iii V I",
                "V V ii iii IV I",
                "V vi iii vi I iii ii",
                "ii IV ii ii vi I iii",
                "iii IV ii vi iii V",
                "iii IV I I ii",
                "iii V I vi V I",
                "iii ii I iii IV iii vi",
                "vi vi iii iii I vi IV ii",
                "vi vi ii ii I",
                "vi V V I I",
                "iii V iii ii ii vi V",
                "iii iii I vi IV",
                "vi iii I ii V",
                "IV V ii I vi",
                "IV IV iii V iii ii vi",
                "IV I iii vi ii vi",
                "IV iii vi IV iii vi V vi",
                "I V I IV ii ii I I",
                "I ii vi ii V",
                "I iii IV ii V ii IV I",
                "I iii I I I I vi ii",
                "V V IV ii IV vi IV vi",
                "V ii I ii IV V V",
                "V vi IV vi IV ii iii",
                "ii IV V vi V iii iii",
                "ii vi vi I V ii iii",
                "ii vi vi iii ii ii IV IV",
                "ii vi V IV I V",
                "iii V iii iii vi vi I",
                "vi V IV IV ii vi vi",
                "vi ii ii V I vi",
                "vi I iii ii iii",
                "IV IV vi iii I ii ii",
                "vi vi iii IV V I",
                "IV vi V ii IV vi iii IV",
                "IV V I vi vi vi iii",
                "I IV V iii I vi I",
                "I I ii vi vi I V",
                "V IV vi I iii vi V IV",
                "V ii iii ii I",
                "V vi I vi vi I iii ii",
                "ii V IV I I vi ii IV",
                "ii V vi V ii iii ii vi",
                "ii V IV I ii V",
                "iii IV vi vi I iii",
                "iii ii I ii IV vi ii V",
                "iii vi ii I IV IV I",
                "iii iii vi iii V",
                "vi I vi vi vi V I",
                "vi ii IV IV iii vi IV I",
                "vi ii V I V iii IV V",
                "vi ii iii vi ii vi vi",
                "vi vi V I ii ii V V",
                "I I IV vi ii I",
                "III VI VI VII i VI i",
                "III iv VI iv III v VI",
                "III iv iv iv iv VI",
                "VII III III VII i v v i",
                "VII iv v VII v VI VI",
                "VII v i i VII i iv",
                "VI III i III VII v v",
                "VI VI III i i v iv VI",
                "i v VI v iv iv VI",
                "i v i III i VI v i",
                "III iv VI v iv III VII",
                "VII VI VII i i",
                "iv III v VII VII v",
                "iv i v v i",
                "iv VI v VII i iv",
                "iv iv v III v VII III i",
                "v III v iv VII VII i v",
                "v VI III v III",
                "v iv VI VI i III",
                "v v v VI VI v VI VII",
                "IV ii I IV vi",
                "IV vi iii V vi ii I",
                "I I ii I I ii ii",
                "I ii I iii vi IV iii vi",
                "I iii V IV I iii I IV",
                "I vi V vi V ii V",
                "V V IV vi V V V",
                "V iii IV V IV iii",
                "iii iii V V ii V IV V",
                "iii iii vi ii ii ii",
                "vi V IV ii iii V ii",
                "vi V vi V I ii",
                "vi V vi V vi I vi I",
                "vi V vi ii ii IV IV",
                "vi iii IV V I IV V",
                "vi iii vi vi iii iii IV",
                "V ii ii I ii",
                "ii IV I IV IV V",
                "iii iii IV vi V",
                "vi iii vi vi vi",
                "IV iii I IV I vi",
                "IV iii iii ii I vi IV",
                "I IV ii I iii I I",
                "I iii V I IV V V",
                "I iii iii ii IV",
                "V ii IV IV V I V vi",
                "V ii IV iii ii IV",
                "V iii V ii V iii ii I",
                "ii IV I vi V V vi",
                "ii IV vi iii iii iii I",
                "ii I I V ii iii iii",
                "ii V IV V ii V iii V",
                "ii I vi ii vi ii",
                "iii V IV ii IV IV iii V",
                "iii vi vi V vi I IV V",
                "iii V IV V iii IV ii",
                "iii iii vi iii ii vi",
                "vi V V IV V ii I iii",
                "IV vi IV vi vi ii iii",
                "iii vi vi I vi ii",
                "III III i iv iv i VI iv",
                "III VI iv v v v III III",
                "III v VII III III VII i",
                "III iv III III i III",
                "III iv iv VII VI iv III",
                "III v VII v v iv",
                "III v v v III VI v",
                "VII VII iv VII iv VI III",
                "VII iv VII III i iv VI iv",
                "VI III iv iv v VII v",
                "VI i III iv VI VI v",
                "VI i VI VI v i III v",
                "i III i v v v i iv",
                "i III iv v VII",
                "i VII i VI III III i",
                "iv III VI v III III VII",
                "iv VI v v III v",
                "iv i III iv iv v",
                "iv v VI i III VII III v",
                "v III VII v III i III",
                "III VII III i VII VI v VI",
                "III VI v i VI v III i",
                "VII VI III iv i v v v",
                "VII VI VI VI III i",
                "VII VI iv v i VI III iv",
                "VII iv v III VI i i",
                "VI VII i VII VI VI VI",
                "VI VII v VI i III iv III",
                "i i i VI i v v",
                "i v III iv i III iv i",
                "VII iv VII VII III",
                "i VI i VII iv v VII",
                "iv i iv iv III III",
                "v VI i VII iv VII",
                "v v v VII v v",
                "iv i VI VI i i VII",
                "iv iv VII VI VI III VI VII",
                "v VI III VII v i",
                "v i iv VII v i III",
                "v v i v v VII iv",
                "IV V V V iii ii IV I",
                "IV iii iii IV IV I I",
                "IV IV I iii iii ii",
                "I V ii vi vi vi IV iii",
                "I ii vi iii vi vi",
                "V iii vi V ii vi V",
                "ii IV I IV V ii ii",
                "ii V IV IV vi IV iii I",
                "ii iii I IV vi I",
                "iii IV V vi vi vi ii iii",
                "iii V IV iii IV ii ii V",
                "iii V I V vi I I V",
                "iii vi ii IV IV iii I ii",
                "vi I I vi I IV",
                "vi iii iii vi IV vi IV I",
                "vi vi iii I IV IV",
                "IV I I vi ii ii",
                "IV iii I iii vi V",
                "IV iii V IV IV ii iii",
                "V vi iii ii",
                "IV iii V iii V iii iii",
                "IV V ii ii IV V",
                "IV iii V IV IV vi",
                "I I ii IV vi vi iii",
                "V IV IV I iii I vi",
                "V ii I I V V",
                "ii IV I IV IV I V V",
                "ii IV ii V V V",
                "ii vi V vi IV V vi",
                "ii I ii vi V vi vi",
                "iii I vi IV iii",
                "iii ii iii IV I IV",
                "vi ii IV iii V iii ii ii",
                "I V ii IV ii I V",
                "V iii vi ii I vi ii",
                "V vi I IV V IV",
                "ii V IV I ii iii",
                "ii iii IV ii ii IV iii",
                "iii ii vi V IV",
                "IV I I ii ii vi",
                "IV V iii vi ii IV V",
                "IV ii V iii iii ii iii V",
                "IV iii ii vi IV vi V",
                "IV vi V ii vi V V",
                "IV ii ii iii ii IV iii",
                "I iii vi IV I V IV",
                "I V V IV IV I I",
                "V V ii IV vi IV I iii",
                "ii IV V vi V iii",
                "ii V V I IV I V I",
                "iii I IV vi I I",
                "iii I ii iii I iii iii",
                "iii ii I IV ii IV I",
                "iii ii iii V V V V",
                "iii vi IV ii V iii",
                "vi I vi I vi I IV iii",
                "vi ii ii V V iii IV iii",
                "vi I vi ii iii ii iii",
                "I V IV vi iii",
                "V IV iii IV vi V ii",
                "IV I V V iii ii V",
                "IV ii iii vi IV I I iii",
                "IV ii vi ii vi V I iii",
                "IV iii vi I V IV vi V",
                "IV vi V vi V IV ii ii",
                "I I ii vi iii vi ii",
                "I iii IV ii iii vi",
                "I iii I ii IV IV",
                "V ii I ii iii ii ii vi",
                "V iii vi V V IV vi iii",
                "V iii iii IV ii",
                "ii I vi vi vi iii I",
                "ii V V iii ii V vi",
                "iii IV I ii ii IV",
                "iii iii vi ii I vi iii IV",
                "vi iii I V I vi ii IV",
                "vi iii vi I ii iii ii vi",
                "vi vi iii vi ii IV IV",
                "IV ii ii I V",
                "vi ii vi I IV vi IV",
                "IV I I I vi IV V iii",
                "IV vi ii I iii iii",
                "I I IV iii ii ii iii vi",
                "I ii I iii ii I",
                "I ii iii ii iii",
                "V IV iii vi IV V",
                "V ii I iii IV vi I iii",
                "V iii I V ii I IV I",
                "V vi vi IV vi IV ii V",
                "ii I IV vi IV IV V ii",
                "ii I iii iii V IV vi V",
                "ii vi I V V ii",
                "iii IV V iii IV I",
                "iii I I V IV",
                "vi V ii I I V I IV",
                "IV V iii IV ii vi",
                "iii IV I ii I ii",
                "iii V I vi ii I I",
                "IV I I iii vi",
                "ii vi IV ii IV",
                "III III iv iv VI III i VII",
                "III VI v VI VII i v v",
                "III i iv VII iv VII",
                "III i iv iv III v i III",
                "III v VII v i v",
                "III v v v VI VI VII",
                "VII VII VII i i VI v",
                "VII VI VII i III v i",
                "VII VI iv VII VII VII i",
                "i i i III i III v VI",
                "i v III VI v i",
                "VI VI VI VII VII v VI",
                "iv iv VI i III i v",
                "v v v v iv VI",
                "iv i III VI i iv",
                "iv i VII v III VI VI i",
                "iv i iv VII i iv III VI",
                "iv iv i VI VII VII v",
                "v III VI VII VII i III iv",
                "v v i VI v III v",
                "IV I ii I V iii iii IV",
                "IV vi vi vi V V vi",
                "I I ii I iii IV V V",
                "I V vi V IV V ii",
                "V IV IV iii ii ii vi iii",
                "V vi vi iii ii vi",
                "ii I IV ii IV V ii",
                "ii vi IV I iii iii IV V",
                "ii iii iii iii I vi",
                "iii V V ii ii V vi",
                "iii iii vi IV I ii",
                "iii vi IV iii iii IV I iii",
                "iii V iii vi vi vi ii",
                "vi I V ii vi ii V",
                "vi I iii V ii I IV",
                "vi I vi vi vi iii I",
                "vi I ii IV vi vi",
                "IV IV ii I vi V ii",
                "ii I I vi ii iii",
                "vi V V I ii I",
                "IV IV I I V V IV V",
                "IV iii I ii ii V ii IV",
                "IV iii ii I IV I IV iii",
                "IV vi iii iii ii IV I",
                "I IV IV I IV ii IV I",
                "I V IV iii I IV",
                "I ii ii ii vi iii iii",
                "I vi IV iii vi vi V",
                "V I V I I IV ii V",
                "V ii I IV V IV I ii",
                "V IV V V I vi",
                "V iii IV vi vi iii ii",
                "ii ii vi I V iii",
                "iii V ii vi IV",
                "iii vi IV IV I vi V iii",
                "iii vi V vi vi I ii",
                "vi V V iii V iii V",
                "V IV IV I V I",
                "vi iii vi IV IV V ii",
                "I ii IV ii ii",
                "III VI v iv v VI",
                "III i VII iv v III III",
                "VII III iv v VI III",
                "VII VI i i i VII III VII",
                "VII VII v iv v v VI",
                "VII iv VII VI v v v",
                "VII v i v VI VI v",
                "i VII III iv III iv iv v",
                "i i iv III i",
                "i VI v VI i i VI",
                "i v III v VII v",
                "i i III VI v VI i",
                "iv i VII VII VI VI",
                "iv v III v VI i i",
                "iv v VI v iv III VI VII",
                "v III iv i i v v III",
                "v VII III iv VII VI VI iv",
                "v VII VI III VI III iv",
                "v VII iv VII VII VII III VII",
                "v i v VI i III iv",
                "III VII i III iv iv VI i",
                "VII III III III III v",
                "VII III VII iv iv VI iv",
                "VII VII iv i III iv",
                "VII i iv VI VI VII v i",
                "VII v VII v i VI III",
                "VII v III III VI v",
                "VI iv i VII i iv v",
                "VI v VII i v III v iv",
                "VI v v VI i v VI VI",
                "i i iv III v v iv VI",
                "i iv i VI i VI",
                "III i i VII iv v VI",
                "VI III iv VII VI iv",
                "i VII VI v VII i i",
                "iv iv VI VI i i v",
                "v i i III v v VII iv",
                "v i v v VII i i III",
                "v iv i VI iv i",
                "v v VII III i VI v VI",
                "IV V IV vi V V I IV",
                "IV V vi IV IV I V",
                "IV ii vi IV IV vi IV iii",
                "I ii I I ii IV V I",
                "I vi IV ii vi ii",
                "V IV I IV ii ii V I",
                "V IV I IV iii iii vi V",
                "V ii iii IV iii V ii",
                "ii IV iii iii iii ii",
                "ii I vi ii vi I I vi",
                "ii iii V I I vi V V",
                "ii IV vi ii I ii ii",
                "iii ii ii vi vi IV",
                "iii I IV V vi",
                "iii ii vi V ii vi vi",
                "vi IV IV IV V iii ii vi",
                "vi IV ii IV vi iii IV",
                "vi ii I V V iii vi IV",
                "I IV V iii ii V I",
                "vi vi iii V IV iii",
                "IV IV iii V IV V V",
                "IV V I V vi I V IV",
                "IV iii IV I V I",
                "I I IV ii iii vi IV",
                "V I ii V I I V V",
                "ii V ii V IV iii vi",
                "ii vi IV IV vi IV",
                "iii ii ii iii I V I V",
                "iii iii I I vi V vi",
                "vi IV V IV I iii",
                "vi V ii IV I vi vi",
                "vi iii vi iii iii iii iii",
                "vi vi iii IV IV vi",
                "vi IV ii ii vi ii IV",
                "vi vi ii V I iii ii",
                "V vi ii ii vi IV vi",
                "ii iii ii iii vi",
                "iii ii IV iii V",
                "iii ii vi IV vi V",
                "iii vi I iii iii vi",
                "IV V vi IV iii vi V",
                "IV V iii iii iii vi V",
                "IV ii V V",
                "IV iii V ii ii vi iii",
                "I ii iii ii V vi I",
                "I vi ii vi vi",
                "I ii IV V IV I vi",
                "V IV ii I V I iii iii",
                "V I iii I IV IV vi iii",
                "V vi IV vi IV IV vi",
                "V I vi I I",
                "ii IV IV I I ii V vi",
                "ii ii IV iii ii IV ii V",
                "iii IV I I IV iii IV",
                "iii vi I I ii iii ii V",
                "vi vi ii IV V iii I",
                "vi V vi IV IV vi",
                "IV vi iii iii vi vi V",
                "I IV iii I V I",
                "ii V iii iii V",
                "IV IV I IV I I iii",
                "IV I I iii I V iii ii",
                "IV V iii V IV vi vi",
                "I I ii IV iii V IV",
                "I iii vi V iii V",
                "I iii vi IV I IV ii",
                "V IV ii V ii iii IV IV",
                "V IV vi V IV ii",
                "V IV vi V V iii",
                "V V IV ii I ii",
                "V ii ii iii ii iii V",
                "V ii vi iii vi I vi",
                "ii IV I IV V",
                "ii IV IV V ii V V",
                "ii I IV ii vi ii iii iii",
                "ii V iii iii I vi iii iii",
                "ii V vi iii ii V iii",
                "iii vi vi V I ii V I",
                "vi V IV vi iii",
                "vi ii I IV ii I vi",
                "vi iii vi ii IV ii V",
                "vi vi IV I iii V",
                "vi vi vi ii V I",
                "IV IV vi IV iii vi vi",
                "IV iii iii iii I",
                "ii IV iii vi iii ii",
                "ii V iii iii I ii vi",
                "vi IV I ii iii V IV",
                "vi iii vi vi IV V",
                "IV I V iii ii ii iii",
                "IV I vi iii ii iii I V",
                "I IV iii vi I V ii",
                "I I IV IV iii V I I",
                "I V IV vi iii iii V",
                "I V iii IV ii IV vi vi",
                "I ii V iii I",
                "I vi IV ii V I iii iii",
                "V IV vi iii ii",
                "V V IV I IV IV",
                "V ii I iii V vi ii",
                "V ii I iii vi vi ii iii",
                "V ii vi I V ii ii vi",
                "V iii I I iii",
                "V iii V IV vi iii V",
                "ii V iii I iii I I iii",
                "iii IV ii IV V iii iii vi",
                "iii ii I V iii I V",
                "iii vi iii I IV IV",
                "ii V V iii vi IV IV",
                "III III VI i v VI i",
                "III VII v VII v",
                "III v iv v i i",
                "III iv VII v VI iv",
                "VII III VI i iv iv VII",
                "VII VII iv VII v III v",
                "VII v VII III VI v iv v",
                "VI III iv III III VI v",
                "VI VI VII VII III v v III",
                "VI i VI v VI VI",
                "VI i VI iv VI III VII",
                "VI i v III VI III",
                "VI v i VII VI iv v",
                "i iv VI VII III iv v",
                "III i VII III",
                "iv i iv i VII VII VI",
                "iv VII VII VI VII iv i",
                "iv v III v i iv i VII",
                "v VII i v VII III VI",
                "v i VII v v",
                "IV V iii vi iii iii I ii",
                "IV V vi vi vi vi ii",
                "IV vi I I V IV IV",
                "IV vi iii V IV ii V",
                "IV V I iii vi",
                "I IV iii vi vi iii",
                "I V IV IV V ii V vi",
                "V vi I I iii ii vi vi",
                "V V V iii iii iii",
                "ii ii vi V ii IV V",
                "ii vi ii iii ii ii V",
                "iii vi vi I iii vi IV V",
                "vi I IV ii vi I IV vi",
                "vi ii V vi iii iii iii",
                "vi ii ii iii I I I I",
                "vi ii iii ii iii V V vi",
                "IV I ii vi",
                "ii ii IV V I",
                "vi iii ii iii iii IV",
                "ii vi iii vi I",
                "IV V ii vi I V ii",
                "IV vi I I V vi ii",
                "IV V iii ii vi I",
                "I ii V I iii V V",
                "I iii IV V IV V IV V",
                "I iii V ii I ii",
                "V V V V V V IV IV",
                "V iii IV IV V ii I ii",
                "ii IV ii iii IV I",
                "ii V V ii ii iii I",
                "iii IV V I IV IV ii",
                "iii I iii IV vi vi ii IV",
                "iii I vi IV I I I vi",
                "iii ii iii iii ii vi V V",
                "iii iii I IV IV V V",
                "iii vi vi V ii IV V V",
                "iii V I V ii ii",
                "vi V V iii vi V vi vi",
                "vi iii V vi IV",
                "IV V vi IV I",
                "III III VII iv v VI iv",
                "III VI v III i III v v",
                "III v v iv v III iv",
                "VII III VI VII i III v",
                "VII VI VII VII VI III iv",
                "VI III i VI i III",
                "VI VII VI VII v III i VI",
                "i i v III VI i VI v",
                "i iv III iv III iv III",
                "i v iv i iv III III",
                "III iv v iv v",
                "VI III v III v iv i",
                "iv III v III i",
                "iv VII v VII i iv",
                "iv III III III iv VI III VI",
                "iv VI iv VI v VI",
                "iv v III v i iv iv",
                "v III iv VII VII III VI iv",
                "v III iv i i VII III VI",
                "v v v III III VI i VII",
                "III III iv iv III iv VI",
                "VII i iv VI VI iv",
                "VII i iv iv i v III",
                "VII iv VI VI VI",
                "VI VII VI v VI VI III",
                "VI v i iv III v VII VII",
                "VI v VII III v VII III",
                "VI v iv iv i iv VI",
                "i i iv v VII v i iv",
                "i iv i v VI VI VII",
                "VI III iv III III",
                "iv VII VII VII iv v III",
                "v VI i VI VII i",
                "iv VI VII i VI iv VII",
                "iv VI VI v III i i",
                "iv i VII VII v i",
                "iv i VI VI i VI III",
                "v III iv iv iv v VII",
                "v III iv v III VII",
                "v iv i VII VII VII III",
                "IV IV IV V IV V IV vi",
                "IV I iii V iii ii vi IV",
                "IV ii IV iii IV ii vi",
                "IV iii ii ii V I",
                "IV vi IV ii iii ii V",
                "IV ii I V vi vi iii",
                "I IV IV IV I ii vi ii",
                "I V iii vi IV ii",
                "V I iii I iii I ii",
                "V V V V ii V V",
                "V IV ii V iii",
                "ii ii I ii ii iii",
                "ii ii iii I I vi ii V",
                "ii vi vi IV vi iii IV",
                "iii I IV vi iii I IV iii",
                "iii iii iii vi iii V IV",
                "iii iii V vi I IV",
                "IV V I V V",
                "V V V IV",
                "ii V V ii IV IV ii",
                "IV I IV I ii ii I iii",
                "IV I vi vi V ii",
                "IV vi iii V vi ii V",
                "I IV vi IV vi V",
                "I IV vi V ii iii",
                "I I I V vi ii",
                "I V vi I I I I",
                "I iii V vi V iii V",
                "I V iii ii V IV",
                "V IV I IV vi ii IV ii",
                "V IV V ii I ii IV",
                "V vi vi vi IV ii",
                "ii I vi iii I IV V IV",
                "ii V I I vi I I",
                "ii ii I vi IV IV V vi",
                "iii V V V I ii",
                "iii V vi vi V I",
                "vi I I IV ii V V",
                "ii IV iii iii I I",
                "iii V iii IV ii",
                "I I iii iii vi iii IV",
                "I iii IV IV iii ii",
                "V I V IV iii iii",
                "V V V ii I V",
                "V ii IV ii vi V ii iii",
                "V ii vi vi ii V iii I",
                "V iii V ii V IV ii",
                "V IV V V ii",
                "ii I I IV iii IV",
                "iii IV I IV ii vi",
                "iii iii V I iii iii iii",
                "iii vi I ii iii iii vi IV",
                "vi I ii IV iii vi I IV",
                "vi V V vi iii vi iii ii",
                "IV I IV IV IV iii iii",
                "V I IV IV vi V iii",
                "V vi V I V vi",
                "ii I I iii I",
                "iii iii ii iii vi IV",
                "vi vi iii iii ii V",
                "IV vi IV V vi iii ii",
                "I IV iii IV ii vi IV",
                "I IV vi IV ii vi vi iii",
                "I V vi V V vi iii",
                "I vi I I I I",
                "V iii vi vi V vi ii",
                "V vi vi I V V",
                "ii IV I I IV iii iii",
                "ii IV iii iii vi vi V",
                "ii I V vi I ii vi ii",
                "ii V IV iii V V ii iii",
                "ii vi IV IV ii vi I",
                "ii IV vi I IV I iii",
                "iii V vi V V ii",
                "vi IV ii V ii vi",
                "vi I V vi I",
                "vi V I ii ii IV V ii",
                "vi vi I IV V iii",
                "vi iii V V IV V ii",
                "IV I ii ii V V IV",
                "IV IV IV IV ii IV iii",
                "IV vi iii ii V iii IV",
                "I I I V V ii",
                "I I vi ii ii IV ii V",
                "I V IV IV vi V iii I",
                "I ii ii ii I IV",
                "I vi vi vi I iii vi",
                "I V I vi V ii vi",
                "V IV ii I ii",
                "V vi IV vi ii iii IV",
                "ii V vi iii V iii ii vi",
                "vi IV IV iii V I IV",
                "vi ii V ii I vi I IV",
                "vi iii IV IV IV I",
                "vi I ii IV iii",
                "vi vi I IV vi V",
                "IV I V V IV IV ii",
                "IV vi iii ii I V",
                "V ii ii I I",
                "vi IV IV ii V ii",
                "III iv VII v i i VII VI",
                "VII i v v iv III i VI",
                "VII iv III iv iv v i",
                "VII iv VI i iv VI",
                "VI VI i i iv iv i III",
                "VI i III iv VII v v III",
                "i III VII v VII III iv",
                "i VII VI iv iv III v VII",
                "i i v v VII iv v",
                "i iv VII III III VII III",
                "i v VI VI iv i i i",
                "iv i v VII VII III iv",
                "iv VII i III i i VII",
                "iv VI iv VI III v VII v",
                "iv VI v i iv i iv i",
                "iv i iv III v iv v i",
                "iv III III VI VII III",
                "v VII VII i v III III VI",
                "v i i III III III iv",
                "v iv v iv VI III III iv",
                "IV V V iii iii I vi ii",
                "IV ii I IV V V",
                "IV iii ii vi iii ii ii",
                "I I I iii ii V",
                "ii I V I vi iii I IV",
                "ii V IV ii I V V",
                "ii V vi iii iii iii iii V",
                "ii ii V vi I I iii",
                "ii iii I vi iii vi iii vi",
                "ii vi IV IV I IV vi",
                "iii I I I I vi IV vi",
                "iii iii V ii iii I IV vi",
                "iii vi V iii iii vi ii",
                "vi V iii I ii IV vi iii",
                "vi ii iii I ii ii",
                "vi iii I V vi iii ii ii",
                "vi iii ii IV iii V ii ii",
                "V IV iii V IV vi IV",
                "iii I iii V ii iii",
                "iii V ii iii IV I",
                "IV iii ii V IV iii",
                "IV vi ii V IV vi I",
                "IV vi vi V I iii V",
                "IV vi IV V V V",
                "IV iii ii I vi vi iii",
                "IV vi ii iii",
                "I ii iii ii vi I",
                "V vi I iii I iii iii",
                "V vi iii I V iii I",
                "ii IV I vi iii ii IV",
                "ii I V vi I vi",
                "ii iii IV IV V I V",
                "iii ii IV vi ii iii iii",
                "iii iii I vi vi vi",
                "vi V ii vi IV iii I ii",
                "IV vi iii I I IV iii",
                "I I iii V ii V IV",
                "I vi V I",
                "V IV I ii V V",
                "vi vi V vi IV I",
                "III VII iv iv i iv III i",
                "III v VI III iv iv VI",
                "VII i v i VI iv III VII",
                "VI VII VI v v v VII VII",
                "VI VI VI v iv III iv v",
                "VI i v VI VII i iv iv",
                "i III III v III III III",
                "i VII VI i iv iv v",
                "i VI i III v iv III III",
                "i i i i v VII iv",
                "i i i i i i v",
                "III VI VII i iv",
                "iv iv v",
                "v VII VII iv iv iv III",
                "v iv iv VI v",
                "iv iv i iv iv VII v",
                "iv v VI iv III III v v",
                "v III iv VI III VI i",
                "v VII iv III i v VII v",
                "v VI VII III III i",
                "III VII III iv iv i",
                "III i III VI v v VII",
                "VII III VII III VI III i",
                "VII VII i v i III VII",
                "VII VI i III v v VII i",
                "VII iv i III iv VI VII i",
                "VII v iv i III i VI v",
                "VI III VII VII III III VI VI",
                "VI i i i VI III VI v",
                "VI v v i VII iv VII VII",
                "i III VII i iv VI",
                "i VII VII VI VII VII VI",
                "i VII iv VII iv i",
                "i VI v VI VI v iv iv",
                "III VII III III",
                "iv VI III VI i III VI",
                "v III iv iv VII III",
                "v i VI i VI",
                "v iv VI i iv v v",
                "v iv iv v v III",
                "IV V vi iii ii ii V",
                "IV iii IV iii ii V vi",
                "IV vi iii V ii ii ii ii",
                "I IV I I V ii",
                "I I iii I vi ii ii",
                "I V vi V ii V ii",
                "I vi vi iii I IV ii",
                "V IV IV vi ii ii IV",
                "ii ii IV iii V I ii ii",
                "ii V ii I ii IV vi",
                "ii V vi iii iii",
                "iii V ii IV I iii iii ii",
                "iii vi IV vi V vi I",
                "vi V ii ii V IV",
                "IV I iii V I",
                "I vi vi ii I ii",
                "I IV IV vi iii I",
                "V I I V",
                "iii I iii ii iii iii",
                "vi iii iii IV V vi vi",
                "IV I V ii I vi ii",
                "IV iii V vi vi IV iii I",
                "I ii iii ii ii I V",
                "V I vi ii V V IV",
                "V ii V I ii V ii ii",
                "V ii vi ii ii ii IV iii",
                "V vi I ii vi I I",
                "ii IV IV V vi IV iii",
                "ii V vi vi iii V IV iii",
                "ii ii vi V IV IV ii",
                "ii V I I IV I",
                "iii IV I IV V I I iii",
                "iii IV ii I V IV vi vi",
                "iii V ii IV I IV I",
                "iii vi vi iii I V",
                "vi IV IV I IV",
                "vi ii ii vi I V",
                "I IV IV vi vi V I",
                "ii I ii V V I",
                "ii iii vi ii",
                "IV V iii vi IV",
                "I I ii I V iii ii",
                "I ii IV iii vi iii",
                "I vi V vi iii V V I",
                "V ii I vi I iii IV iii",
                "V iii V V I iii IV IV",
                "V iii iii I vi iii",
                "V vi I ii V IV",
                "ii IV ii ii iii V iii",
                "ii V IV I IV V V",
                "ii V ii V iii I V",
                "ii iii V V I IV vi ii",
                "ii vi I IV iii IV vi ii",
                "iii ii IV ii ii",
                "vi V ii iii vi",
                "vi vi vi IV vi I IV",
                "vi I vi ii V IV",
                "V ii ii iii V ii",
                "ii vi iii V vi",
                "vi IV V V V vi ii",
                "IV I ii iii V V IV",
                "IV iii ii IV V I V V",
                "IV vi vi V I I V V",
                "IV vi vi vi vi I",
                "I IV I V IV ii",
                "ii I vi I V I",
                "ii ii iii I ii ii",
                "ii vi IV I vi IV",
                "iii I V vi iii IV iii V",
                "iii V I V I I",
                "iii iii iii iii IV I I",
                "iii vi V iii ii V ii",
                "vi IV IV I I ii ii ii",
                "vi IV I IV ii ii IV",
                "vi IV ii IV iii",
                "vi iii iii IV V V ii",
                "vi I vi vi V iii",
                "vi vi ii V vi ii",
                "V iii iii IV iii IV IV",
                "iii vi V V ii ii",
                "IV V vi ii IV ii",
                "IV ii ii I vi iii",
                "I IV vi iii IV IV vi",
                "I vi V I vi ii iii V",
                "I vi ii V I iii",
                "V I ii I iii V iii I",
                "V V I IV iii",
                "ii ii vi vi ii I I",
                "ii I I V IV ii I",
                "ii ii I iii V",
                "iii IV V iii vi ii",
                "iii IV ii iii IV I",
                "iii V V V I IV",
                "iii iii iii V ii vi",
                "vi ii I vi vi V vi IV",
                "vi iii V IV I ii I iii",
                "IV V IV ii IV iii I",
                "I vi I IV vi vi ii",
                "I vi ii iii iii V IV",
                "V I I V V",
                "III VII VII v III VI III",
                "VII VII v III i iv i",
                "VII VI i VII VII VII iv i",
                "VII iv i i iv",
                "VI III VI v iv VI iv",
                "VI VII i VII v VII III",
                "VI VII VI VI VI i VI",
                "VI v VII VI III III III",
                "i i VII v VII iv",
                "i iv III i III VII VII v",
                "i iv VI i VI v III VI",
                "III VI III VI i VI III",
                "VI VII v VII VII",
                "VII VI III iv i",
                "iv VI v VII III VII iv",
                "v III VI VI VI iv VII",
                "iv III v v VII v iv",
                "iv i VI iv i v iv III",
                "v VI III iv III III",
                "v i VII iv VI III VI",
                "IV ii I I I iii",
                "I V I iii V ii IV IV",
                "I ii V IV iii IV I vi",
                "I iii vi IV I iii",
                "V IV iii I vi I ii",
                "V V ii iii ii I",
                "V ii vi I IV iii",
                "V iii V ii vi iii IV iii",
                "ii I ii iii iii IV",
                "ii iii I iii vi V ii",
                "ii iii ii iii V iii V",
                "iii V I ii ii I I",
                "iii V iii IV I vi",
                "iii ii I vi V V iii IV",
                "iii iii vi IV iii iii iii I",
                "iii I vi I I iii",
                "vi IV I I vi V I",
                "I IV ii iii iii iii iii",
                "iii ii ii iii ii iii I",
                "IV iii IV ii ii vi",
                "IV IV iii IV vi I I iii",
                "IV I I IV IV iii",
                "I IV V V ii IV ii iii",
                "I V IV iii IV IV iii vi",
                "I ii iii V IV V iii I",
                "I ii iii iii IV vi iii I",
                "I iii V V iii I iii",
                "I iii ii iii ii I",
                "I vi vi ii iii V vi IV",
                "V I V ii vi iii",
                "V I vi I iii IV",
                "ii iii V V iii I I I",
                "ii iii V ii IV I",
                "vi IV V V ii ii ii V",
                "vi iii iii ii I vi ii",
                "vi vi V vi I ii",
                "vi vi ii iii vi iii iii iii",
                "V I IV I IV V V",
                "vi ii I iii IV iii",
                "vi vi IV vi V vi",
                "III i III i iv v iv iv",
                "III i VII i VI VI VI",
                "III v i iv i",
                "III v i VI v III III",
                "III iv VII i VI VI VI iv",
                "III v VII iv III VI iv",
                "III v i v VII iv VII",
                "III v v VII v VI v",
                "VII VI v VII VI VII VII iv",
                "VII v v VII VI iv iv III",
                "VI VII iv VII VII v III",
                "VI i VII i VI VI i v",
                "VI iv III III iv iv III III",
                "VI iv III VII iv VII v VI",
                "v VII III iv iv v",
                "v VII VI i i VI III iv",
                "v VI iv III v VII VII",
                "v VI iv VI VI VII",
                "v iv i VI III v",
                "v v i v iv iv VI",
                "III iv III v VII III iv",
                "VII III iv VI VI i",
                "VII VI iv III iv VI",
                "VII i III III III VII",
                "VII v VII III VI v VII v",
                "VII v VII i VII III VII",
                "VI v i VII III VI",
                "VI iv VII III VII i v i",
                "VI v i iv III VI i",
                "i VII i i v iv III",
                "i VII iv VI iv v iv",
                "i i III III v iv iv",
                "i VII v III",
                "i iv VI iv VI III",
                "i v i VII iv v v v",
                "iv iv VI iv VI VII iv",
                "iv VI III VII VI VII i VI",
                "v VII III iv VI",
                "v iv v VI III III i",
                "v v v iv VI III iv III",
                "IV V V iii vi ii vi",
                "IV V vi iii V ii IV IV",
                "IV V IV I I IV iii",
                "IV iii vi iii V I V",
                "IV iii vi IV IV",
                "I I ii ii vi V V",
                "I V ii ii vi V iii",
                "I vi V ii V I",
                "ii IV I IV ii V",
                "ii V ii ii vi I IV",
                "ii V I ii vi iii V",
                "iii IV vi I V iii ii ii",
                "iii ii ii ii V ii",
                "vi I I vi I iii vi IV",
                "vi I V ii vi V I I",
                "vi V ii vi IV I iii",
                "vi vi IV iii ii I I IV",
                "vi V IV vi iii iii vi",
                "IV V IV I iii I ii",
                "iii vi vi ii iii",
                "IV V IV vi IV I V IV",
                "IV V iii IV iii I ii V",
                "IV iii I IV ii IV",
                "IV iii iii IV IV V I",
                "IV vi vi ii IV I",
                "IV iii IV ii iii vi",
                "I I I ii V V iii",
                "I V V ii I V I ii",
                "I ii IV ii I",
                "ii I IV V vi vi IV iii",
                "ii I ii ii IV vi iii IV",
                "ii V V ii V I V IV",
                "ii V vi I ii V IV",
                "iii vi I iii vi V iii vi",
                "iii vi vi ii vi iii ii IV",
                "vi IV iii ii IV IV IV ii",
                "vi I V I",
                "vi vi iii V V IV I",
                "I IV IV IV I iii IV",
                "V V vi vi IV iii vi",
                "IV IV IV V I IV vi",
                "I vi V iii ii I V V",
                "V IV ii V iii I V iii",
                "V IV ii vi V I",
                "V I IV vi ii vi V",
                "V I V vi vi V",
                "ii I IV IV vi V vi",
                "ii IV I iii IV I V",
                "iii V I I I I ii V",
                "iii ii iii vi I vi vi vi",
                "iii iii IV vi vi iii vi I",
                "vi ii V I iii vi ii",
                "vi vi IV vi iii ii ii",
                "vi vi ii iii V iii ii iii",
                "vi vi ii V IV vi",
                "vi vi I V V vi",
                "iii vi ii V V",
                "vi iii V IV V iii",
                "ii IV V V ii",
                "IV IV V I iii",
                "IV IV I IV I IV",
                "IV IV ii ii IV I vi",
                "IV iii ii V V vi iii",
                "IV iii iii V vi vi IV",
                "IV vi IV vi V iii I",
                "IV ii iii iii I ii",
                "I ii ii V iii ii",
                "V V iii IV IV I V IV",
                "V V IV vi I V IV",
                "V iii ii iii IV IV V",
                "ii V ii IV ii I",
                "iii IV IV V vi V",
                "iii IV iii V I I IV",
                "iii V I IV vi V ii",
                "iii iii IV IV V",
                "iii vi iii ii IV iii",
                "vi IV IV IV vi ii vi",
                "iii V vi ii IV vi I",
                "iii iii V I V",
                "vi ii V vi iii vi",
                "IV IV IV I iii vi ii",
                "IV I V IV IV IV vi",
                "IV V iii IV iii V ii",
                "IV ii IV I ii ii I iii",
                "IV iii vi iii I iii ii I",
                "I IV I IV vi",
                "I ii iii vi V vi ii",
                "I iii I V ii IV IV IV",
                "I iii vi iii ii ii I ii",
                "V I vi iii vi IV I",
                "V V iii V V I iii",
                "V ii vi iii iii vi V",
                "ii iii V I I iii vi",
                "ii vi iii V V IV I ii",
                "ii vi vi I iii V I",
                "iii vi V ii I IV vi",
                "iii vi iii vi iii I I V",
                "iii vi vi iii vi ii I",
                "vi IV IV V IV vi IV",
                "vi iii IV iii I vi IV vi",
                "III III VI iv iv v VII v",
                "III III v iv VII VI III v",
                "III i III iv iv VII III i",
                "III i iv iv iv v VI VII",
                "VII III iv III v III i v",
                "VII i v VI iv III iv",
                "VII v i VI VII v iv iv",
                "i III v i iv v",
                "i VII VII III VI iv",
                "i VII VII iv v VII iv i",
                "III III v VII VII iv i",
                "III i III i III v",
                "III v VII VI i iv iv",
                "VII VII iv VI i VI VI",
                "VII i VI iv v v",
                "VI VII III i i v III",
                "iv VI i v VI v",
                "iv v i VI v VII",
                "iv III VII III iv VI VI VI",
                "v VI III VII i III VII",
                "I ii ii IV vi ii vi",
                "I iii I iii vi iii",
                "I I V vi V V iii",
                "V vi vi iii vi V iii ii",
                "ii ii iii ii V vi IV",
                "ii I I vi iii vi",
                "iii IV vi vi ii I",
                "iii I vi I IV vi ii V",
                "iii V V V vi vi iii",
                "iii V V I iii V ii",
                "iii iii vi V I ii",
                "iii vi IV iii I iii V vi",
                "iii vi iii IV ii IV I",
                "vi IV I iii iii",
                "vi IV I I ii IV",
                "vi ii vi iii ii I iii IV",
                "vi vi vi vi iii I IV ii",
                "IV vi V I IV",
                "iii vi V iii I IV",
                "vi ii iii I vi IV",
                "I I iii ii iii I ii vi",
                "I ii iii V iii iii iii I",
                "V iii V I IV vi iii",
                "V iii ii iii I I IV",
                "V iii iii ii I IV ii",
                "V vi I ii vi IV V ii",
                "ii ii I IV iii ii ii",
                "ii vi V I IV IV IV",
                "ii vi V vi ii IV vi V",
                "ii V V vi iii IV ii",
                "iii V vi I ii IV iii",
                "iii iii ii ii iii V I I",
                "iii V V vi IV iii iii",
                "vi iii V iii I I",
                "I iii V I iii ii iii",
                "iii ii V I ii IV I",
                "iii IV iii I V",
                "vi IV iii iii ii ii",
                "vi V I IV IV iii ii",
                "vi ii I iii ii iii I",
                "III VI iv VI III VI",
                "III i iv i VI iv i",
                "VII III VII VI VII III iv",
                "VII VII iv i iv iv VI i",
                "VII VII v VI III iv i v",
                "VII VII v VI v III i",
                "VII i III i i iv III",
                "VI III v iv v i i VII",
                "VI iv i v i i i",
                "VI iv iv VI III iv i",
                "i i VI i i VII v III",
                "i i i III i i",
                "VII VI i VI i iv iv",
                "iv iv III v v III",
                "iv III iv VI iv iv i VI",
                "iv VI VII VI v v III",
                "iv iv VI v VII v VII III",
                "v VII VI iv VII v i v",
                "v VI v v i i VI",
                "v v III III v v VI iv",
                "III III iv i VII i iv",
                "III VII i i i",
                "III v iv v v III III",
                "VII i v v v iv VII",
                "VII iv VI iv III VII III",
                "VII iv iv III III VI VI VI",
                "VI i VI III i iv",
                "i VI iv III III i i",
                "i i v i iv VI",
                "III v v III VII VII",
                "iv III iv i i i",
                "iv i iv iv i i",
                "iv III III VII VI v III",
                "iv VII iv v VI iv VII",
                "iv VI III v VII i",
                "iv i iv III iv v VII",
                "iv iv VI VII VI VII VI VI",
                "v VI VII III III VI i III",
                "v v VI v iv v",
                "v v iv VI iv v",
                "IV I vi ii vi V IV IV",
                "IV V vi I ii V IV vi",
                "I IV iii V ii vi V IV",
                "I I IV iii I I ii iii",
                "I V IV iii V I IV",
                "I vi IV ii V V V",
                "V I IV iii iii vi V",
                "V V ii ii ii IV",
                "ii I ii V IV IV V IV",
                "ii I vi vi iii V vi",
                "iii I ii I I iii vi IV",
                "iii V vi vi IV ii ii",
                "iii vi I iii I vi IV",
                "iii V ii vi ii",
                "vi IV iii I",
                "vi I iii vi vi",
                "vi V IV ii IV ii ii V",
                "vi iii ii IV vi I IV",
                "V vi IV V vi",
                "ii V vi I ii ii iii",
                "IV I I vi I vi V vi",
                "IV iii I ii vi V",
                "I I vi V iii",
                "V IV ii IV IV V iii ii",
                "V IV IV IV ii V I",
                "V V iii IV IV I ii I",
                "V ii I V iii IV I",
                "ii I ii ii V ii iii vi",
                "ii V iii V iii V",
                "ii vi IV IV vi IV iii V",
                "ii vi ii ii iii vi",
                "iii IV V iii V ii vi",
                "iii V IV IV vi iii I V",
                "iii ii IV IV vi ii V V",
                "iii I IV IV iii I",
                "vi IV ii I IV I vi",
                "vi V vi ii IV I IV",
                "vi ii V ii I iii V",
                "vi ii ii IV iii vi vi I",
                "vi V I vi IV V",
                "IV IV IV ii I iii I",
                "IV vi ii vi iii iii",
                "IV I I IV IV ii V",
                "I V iii IV V V IV",
                "V IV vi I iii vi I I",
                "V I vi I V ii iii I",
                "V V ii V V V V ii",
                "ii ii IV vi vi I",
                "iii V IV I vi IV",
                "iii V IV vi I ii iii",
                "iii V I IV I I vi IV",
                "iii ii I IV I V IV IV",
                "iii iii iii IV iii IV ii IV",
                "iii vi I iii IV I ii",
                "iii V I iii V V V",
                "vi IV V vi IV ii IV vi",
                "vi IV ii IV V vi vi ii",
                "V IV IV I IV I V",
                "V IV vi I I vi",
                "ii IV vi V I V",
                "IV ii vi I iii IV ii iii",
                "IV ii vi iii I iii ii iii",
                "IV vi I iii vi vi",
                "IV vi IV iii vi vi V",
                "IV iii V vi iii V",
                "I IV iii ii iii vi IV iii",
                "I V V I vi I iii",
                "I V V V ii vi I ii",
                "I iii ii IV vi iii IV I",
                "I vi iii ii ii iii",
                "I vi ii ii I I",
                "V I IV V vi ii I ii",
                "V I vi V ii ii I",
                "V ii iii V iii ii I vi",
                "iii IV I I V IV iii IV",
                "iii IV ii ii V ii vi V",
                "iii vi I IV vi IV IV I",
                "vi iii I IV V V vi iii",
                "I V vi iii iii IV ii",
                "IV vi vi",
                "IV I vi ii IV V iii",
                "I IV vi V V V",
                "I iii I IV V iii vi",
                "V IV V iii I iii V IV",
                "V IV vi V iii vi",
                "V ii iii vi IV iii IV",
                "ii iii IV ii V V V",
                "iii IV vi IV vi IV vi",
                "iii ii IV iii V IV IV",
                "iii ii I V vi",
                "iii vi ii I vi vi IV",
                "vi IV IV I V",
                "vi I I iii iii vi ii iii",
                "vi I vi vi",
                "vi iii V vi V vi I",
                "vi iii ii ii iii V",
                "iii V I I I ii IV",
                "vi V vi I I",
                "I ii iii V V",
                "I iii V IV IV V",
                "III VII iv VII III VI VII VII",
                "III v VI v iv i v",
                "VII III VI VII iv VI VII VII",
                "VII III VI i VII i VII III",
                "VII III iv III v i iv",
                "VII VI VI iv III VI VII iv",
                "VII i III v VI",
                "VII iv VII iv VI III III VI",
                "VII v i i iv VII VI",
                "VII v iv v v VI i",
                "VI VII v v i",
                "i VI VII iv iv v iv III",
                "i i iv i iv iv v",
                "i iv III VI VII v VII III",
                "i iv VII VII VII i",
                "VII VII III III i iv",
                "iv VI v i i VII",
                "iv VI III VI i v",
                "v v v III VI",
                "v v VII VI i III v i",
                "IV V I vi V vi V",
                "IV V V ii IV vi iii IV",
                "IV ii IV ii ii IV iii",
                "IV vi iii vi V iii",
                "IV I iii iii I V iii",
                "I V ii vi V I V I",
                "I vi V I IV",
                "V IV I V ii IV vi",
                "ii IV IV vi IV vi vi ii",
                "ii IV I iii ii V ii",
                "ii I iii vi IV V",
                "ii ii V I iii I I",
                "ii vi iii V ii IV iii",
                "ii IV iii ii vi iii",
                "iii V vi IV iii V I",
                "iii iii vi I I IV vi",
                "iii IV V ii I IV IV",
                "vi ii vi ii vi IV I ii",
                "V IV ii ii iii IV ii",
                "iii I IV vi",
                "IV iii iii I vi ii IV iii",
                "IV vi IV IV ii I vi V",
                "IV vi V V ii I iii",
                "I IV IV iii vi vi V",
                "V I iii vi vi I I",
                "ii IV IV ii V iii iii",
                "ii ii ii I I V iii",
                "ii vi ii ii ii IV iii",
                "iii IV ii I ii I vi vi",
                "iii ii iii IV vi iii V ii",
                "vi IV ii vi iii iii I",
                "vi V iii I IV ii IV",
                "vi ii ii iii V V",
                "vi iii iii iii ii IV vi",
                "vi iii V ii iii",
                "vi vi ii V iii vi I vi",
                "vi I vi I vi IV",
                "I iii I",
                "ii IV V I IV",
                "iii V IV IV ii vi V",
                "VII III III v iv VI VI",
                "VII i v VII v VII v VII",
                "VII iv III III III i v VI",
                "VII v iv v i iv v VI",
                "VI III iv iv iv iv v",
                "VI i iv v III III v",
                "VI VII III VII III v VII",
                "VI iv VI VI iv VII VII VII",
                "VI iv VI i VI i iv VII",
                "i i VII v i iv III",
                "i v v III III III i v",
                "III i III VII VII",
                "VII i iv VII VI VI III",
                "v VI v iv",
                "iv i VI VII iv VI",
                "iv iv v v v VII",
                "iv v III VII III i VI VI",
                "v VII VII III iv i iv",
                "v VI III iv i i",
                "v iv VII v i VII VII v",
                "III VI v III i i",
                "III VI v III iv III III v",
                "VII III VII VI i iv i v",
                "VII VI iv iv III VI i i",
                "VII i III v VI iv VII VII",
                "VII iv v i VII VII VI",
                "VII v iv VI i VI iv",
                "VI VII i VI VI VII VI",
                "i III VII v VII i III",
                "i III i VII VI i v v",
                "III i v VI v i VII",
                "iv v iv v iv",
                "iv iv i III iv",
                "v III iv i i VII III",
                "v VII i III i v v",
                "v VI III VI III VI iv III",
                "v VI VII VI i III III",
                "v i i v VII III",
                "v i iv VII iv III",
                "v iv III iv",
                "IV vi V iii ii V I I I",
                "IV vi ii V I ii iii V",
                "IV ii iii ii I vi V I",
                "I iii vi iii ii I ii",
                "V IV I vi vi iii V",
                "V V I vi ii ii vi vi I",
                "V ii I V vi I iii",
                "ii IV IV ii vi V IV V",
                "ii V IV iii I ii IV V ii",
                "ii iii IV ii V ii IV vi IV",
                "ii vi V iii ii vi iii",
                "ii I vi IV vi V vi I",
                "iii I I ii I V",
                "iii V IV ii V vi vi I",
                "iii iii vi ii iii I vi",
                "vi IV IV ii iii ii ii",
                "vi iii iii vi IV I vi iii",
                "vi V iii iii iii I",
                "vi ii vi V V ii V iii",
                "vi vi vi V ii V",
                "IV I I iii IV IV IV",
                "IV I V IV V iii V",
                "IV V iii ii V iii iii iii",
                "IV V iii iii ii IV I ii",
                "IV V IV V vi V IV",
                "I iii IV vi V",
                "I vi V ii I V iii IV",
                "ii I ii IV iii",
                "ii I vi I V vi iii",
                "ii vi ii I iii IV",
                "iii I V vi ii I vi IV",
                "iii I vi I ii I iii",
                "iii V ii V vi iii ii",
                "iii iii ii I ii iii",
                "iii ii I I I",
                "vi V V vi I I vi vi",
                "vi V ii iii IV IV IV",
                "I ii I vi iii iii iii",
                "V vi iii V I",
                "ii IV V vi IV",
                "IV I V vi ii vi I",
                "I ii V IV ii iii V iii",
                "I iii V V IV iii I V",
                "V vi iii V vi ii IV",
                "ii IV I iii V",
                "ii vi I ii ii IV",
                "ii I V I IV IV iii",
                "iii IV ii V iii I iii vi",
                "iii IV I ii vi",
                "iii IV I iii I V",
                "iii iii V iii V vi",
                "vi I ii vi IV I",
                "vi I vi ii iii iii ii",
                "vi ii I ii IV IV IV IV",
                "vi iii vi iii V vi",
                "vi vi iii ii IV I IV",
                "IV ii IV iii V vi I",
                "ii vi iii I ii I I",
                "vi ii IV V vi ii",
                "vi iii vi V iii V",
                "IV iii iii V ii",
                "IV V vi IV I I",
                "I V iii ii I IV vi",
                "I vi IV vi vi",
                "V vi iii vi IV vi ii IV",
                "ii I I ii iii IV IV vi",
                "ii iii I ii IV I iii V",
                "ii iii iii V I V iii",
                "ii ii iii iii iii IV I",
                "iii iii ii I IV vi I vi",
                "iii iii vi V vi iii IV iii",
                "iii vi vi ii iii I ii",
                "vi I I I I vi I I",
                "vi V iii IV ii iii vi",
                "vi ii V iii V V iii vi",
                "vi iii ii V ii I V iii",
                "vi vi ii iii iii",
                "I IV ii I I",
                "iii ii vi iii ii",
                "vi ii IV I I vi I",
                "IV I iii vi IV IV iii V",
                "IV V V iii iii IV iii",
                "IV vi V I V V",
                "I I IV vi vi ii ii",
                "I iii ii IV IV iii",
                "I ii IV vi V iii",
                "V IV I IV vi V IV iii",
                "ii IV ii V ii I ii ii",
                "ii I I iii V vi IV",
                "ii ii ii iii",
                "iii IV I vi vi IV I",
                "iii IV I vi vi vi iii",
                "iii V vi V IV I vi vi",
                "iii iii I vi vi vi IV iii",
                "iii V ii IV ii I",
                "iii iii I IV IV",
                "vi V IV iii V iii V",
                "vi ii I V IV ii vi IV",
                "vi IV IV IV IV IV IV",
                "vi V ii I IV iii",
                "III i III iv III v VI",
                "III iv i VI VI VI v",
                "III v III i VII VII III",
                "III v VI III i v iv",
                "VII VI III III VI VI v III",
                "VII iv v VII iv III iv",
                "VII v iv VI III v v iv",
                "VI VII VI VI VI v",
                "VI VII v VII i i VII III",
                "VI i iv VI III III",
                "VI i iv VI VII v v v",
                "i VI v VI i VI VI",
                "i i v iv VI III i",
                "i v VII v VII iv VII",
                "i v VI VI iv v",
                "VII v v VII III III VI",
                "III III iv i VI",
                "iv iv v v v",
                "iv VII VI iv i VI i",
                "v VII iv i v VI",
                "IV IV I ii V I ii vi",
                "IV IV vi ii ii vi vi",
                "IV I vi vi ii ii",
                "IV ii IV I IV ii",
                "IV iii iii I V",
                "IV IV V vi IV V",
                "I IV IV ii V ii I",
                "I I I I IV ii IV",
                "I ii IV I IV IV iii",
                "I ii vi IV V vi ii IV",
                "I IV I ii V IV",
                "I V IV vi",
                "V IV I I ii IV I iii",
                "V IV vi IV iii I iii",
                "V I I V I ii IV I",
                "V I iii ii vi ii IV",
                "V I ii IV ii iii ii",
                "V V I vi iii V I IV",
                "V V V I V vi iii",
                "V ii ii iii I I I vi",
                "V ii vi IV IV I IV iii",
                "V iii IV ii vi IV",
                "V I iii vi IV ii iii",
                "V ii vi vi iii iii ii",
                "V iii I iii IV",
                "ii IV IV vi I IV IV ii",
                "ii I iii ii vi",
                "ii V V iii I ii I V",
                "ii V IV IV ii IV",
                "ii ii V I V iii iii vi",
                "ii ii ii iii iii vi vi",
                "ii iii V vi V vi",
                "iii iii vi IV IV iii vi",
                "iii iii vi I vi iii",
                "iii vi ii V ii IV iii I",
                "vi ii ii V vi vi I",
                "vi iii ii ii vi iii",
                "vi vi IV I I I vi IV",
                "vi vi I V IV vi IV",
                "iii V vi iii iii iii vi",
                "IV vi IV vi IV IV I IV",
                "I V iii I vi ii IV",
                "I ii ii ii V",
                "I ii iii ii I",
                "V ii IV I I iii I",
                "V iii iii I IV iii I iii",
                "ii I IV iii vi ii vi",
                "ii I iii V iii I vi",
                "ii V vi iii iii ii I ii",
                "ii I I V V ii",
                "iii IV I ii IV V",
                "iii I IV I vi V V IV",
                "iii I ii iii vi vi V ii",
                "iii V ii vi iii IV IV",
                "iii iii ii iii iii ii vi",
                "vi ii ii I I vi I",
                "vi ii iii iii vi IV iii",
                "vi vi iii IV ii I V",
                "I I vi ii V vi",
                "vi I V ii V vi",
                "III VII VI VII VI v III",
                "III VII iv v VII i",
                "III i VII v III iv v VII",
                "III III III i v",
                "III iv III i III i v",
                "III iv iv VI v VII",
                "III v III VI v VI VI",
                "i III iv VI VI VII",
                "i v VII iv VII",
                "i iv VII i VII III iv",
                "i v i i iv VI VI VII",
                "III VII VII III III III i",
                "III iv iv VI v v",
                "i i VII VII iv i VII",
                "iv VII i i VII III VI VI",
                "iv VI iv VI VI iv",
                "iv v VII VII III v III",
                "v III VI i III III v",
                "v VII iv i i iv III",
                "v III VI i i iv",
                "III iv III VII iv VII VI",
                "III iv v VII III v",
                "VI VII iv VI III VII i v",
                "VI VII iv VI VI III VII",
                "VI i iv i i i",
                "VI iv III III v VI VII iv",
                "i III VI v i VII VII iv",
                "i III iv iv i v",
                "i VI VII VII VII VI VII iv",
                "i VI VII v i v VII",
                "i i III III III i VI",
                "VI VII VI iv III v iv",
                "VI VI iv III III iv",
                "VI VI i VI v",
                "i v III iv III III",
                "v VII VI III v v",
                "v VII VI iv iv III",
                "iv III i v iv VI VI",
                "v VII VII i VII i III",
                "v i i VII i iv VI VI",
                "IV IV I vi IV V iii vi",
                "IV IV ii I ii iii ii vi",
                "IV I ii iii IV vi V",
                "IV V IV ii vi vi iii",
                "IV ii IV vi iii ii IV I",
                "I V IV iii iii IV",
                "V IV ii iii ii vi vi IV",
                "V ii ii I ii IV",
                "V iii iii I ii ii V I",
                "V ii IV ii I I vi",
                "V vi V iii V iii IV",
                "ii vi iii ii iii ii ii ii",
                "iii IV iii I ii I IV",
                "iii IV V ii ii V",
                "vi I ii ii iii ii",
                "vi vi IV vi IV vi iii",
                "IV vi IV iii IV vi",
                "I vi IV IV ii I iii",
                "iii ii vi ii ii vi iii",
                "vi vi I vi",
                "IV IV vi iii V I vi vi",
                "IV V iii I IV I",
                "IV iii IV vi ii V V I",
                "IV I I I vi iii",
                "I I I V V vi IV",
                "I I ii vi iii ii I",
                "I V I V ii IV I",
                "I V V V ii I IV",
                "I iii vi ii V IV iii V",
                "I vi V V iii V IV ii",
                "I ii V I iii vi",
                "I ii vi I iii",
                "V IV ii vi iii I iii I",
                "ii IV iii ii iii iii IV",
                "ii iii V vi I V iii",
                "ii vi IV iii iii vi",
                "iii I iii I vi",
                "vi IV I iii IV ii iii",
                "IV vi V V V vi",
                "I IV I I IV V vi",
                "IV IV iii V I iii I iii",
                "IV I vi I V iii V ii",
                "IV V iii vi IV V ii",
                "IV iii iii I vi I IV I",
                "IV IV iii V I iii I",
                "I IV I I ii iii IV",
                "I V ii ii I vi vi V",
                "I iii V iii V iii iii",
                "V V vi V I V ii",
                "ii IV V I",
                "ii I vi I vi iii ii I",
                "ii V vi V ii ii IV",
                "ii ii iii ii V ii ii ii",
                "ii vi V iii vi vi",
                "ii I vi ii I",
                "iii ii V I IV I V",
                "iii ii iii I ii I vi I",
                "iii iii I ii vi V IV vi",
                "vi V IV vi vi I",
                "iii iii vi iii vi V iii",
                "IV IV V iii IV ii vi iii",
                "IV I V V iii vi I",
                "IV I vi IV iii V V",
                "I V iii IV vi vi I",
                "I ii IV ii ii iii iii IV",
                "ii IV V iii iii I IV",
                "ii iii I ii iii iii V",
                "iii IV I iii ii I iii vi",
                "iii IV vi IV ii ii V",
                "iii I IV ii ii V V iii",
                "iii I ii iii iii iii iii",
                "iii ii ii iii IV iii",
                "iii IV IV I I iii",
                "iii I iii iii I",
                "vi IV iii iii V iii V V",
                "vi vi iii V ii iii IV",
                "I V ii iii IV vi",
                "V V IV ii vi I iii",
                "vi iii iii vi I",
                "IV V iii",
                "IV I I IV I IV IV",
                "I IV iii vi I IV V",
                "I V V ii vi vi vi iii",
                "I ii V iii vi",
                "I vi iii I V IV",
                "I IV V vi I",
                "V IV iii I vi ii iii",
                "V ii iii IV ii vi iii",
                "V vi ii vi V I",
                "ii I I ii vi V I",
                "ii I ii ii V ii V",
                "ii vi vi vi iii V iii",
                "ii V vi ii IV vi I",
                "ii ii vi IV iii IV",
                "iii V ii iii ii V vi",
                "iii V vi ii vi V iii",
                "iii iii vi I IV IV V",
                "iii vi ii IV V I iii",
                "vi I ii ii IV vi ii V",
                "vi IV I ii V vi",
                "III III iv VI VI iv VII",
                "III VI i VI VI VI",
                "III VI v i VI III",
                "III iv iv VI v v",
                "VII III v i III III",
                "VII i iv iv VI III VI iv",
                "VII VII VII VI VII v v",
                "VII VII v i III",
                "VII v v VII VI i",
                "VI VII III iv VI v i VII",
                "VI VII VII VI iv i VII",
                "i III v iv VI iv iv",
                "i VII iv VII iv i VI III",
                "i VI III III i iv v",
                "i VI III v iv v",
                "i i iv v VII iv VII iv",
                "i i i i iv i",
                "v III v III VII v v i",
                "v VII VII VII III",
                "v v VI VI VII VII i",
                "IV IV IV ii V I ii ii",
                "IV I ii iii IV ii V iii",
                "IV V IV IV ii vi vi",
                "IV V IV vi vi ii V vi",
                "IV V iii I IV ii",
                "I iii ii vi ii iii IV",
                "V I V iii iii V IV vi",
                "V I iii ii I iii V vi",
                "V iii I I iii iii IV iii",
                "ii I V V vi vi V IV",
                "ii V vi ii ii IV V vi",
                "ii iii I vi ii I",
                "iii IV I V I IV V",
                "iii I I IV I ii vi",
                "iii iii iii ii vi IV vi",
                "vi IV ii ii iii ii I iii",
                "vi V V iii V I I",
                "IV IV iii IV IV I IV",
                "ii vi vi iii V V",
                "vi V vi ii V ii",
                "IV V IV I vi V I I",
                "IV V I iii vi",
                "IV ii I ii vi V iii",
                "IV iii I ii",
                "I IV V I I vi iii ii",
                "I IV ii ii iii I V",
                "I ii IV iii IV V iii vi",
                "V ii iii I vi I iii",
                "ii I IV I I",
                "ii I ii ii I iii iii ii",
                "ii ii iii IV ii ii vi",
                "iii IV ii V I V V",
                "iii V IV iii iii I V V",
                "vi IV vi V ii ii vi vi",
                "vi I IV IV vi I vi IV",
                "vi V vi vi ii ii vi",
                "vi iii ii I V IV",
                "ii I I V vi ii",
                "ii iii V I I",
                "vi iii ii I",
                "III III iv VI iv VII i VII",
                "III III iv VI iv v iv v",
                "III VII iv v VI III v",
                "III VI III III III iv",
                "III VI III v v iv i",
                "III VI iv VII iv v i",
                "III VII VI i i VI VI",
                "VII VII VI i i",
                "VII VII v VII iv VII",
                "VI i VI III III i VII",
                "VI i VI VI v v iv VI",
                "VI i v VII i III",
                "i i iv i",
                "VI III v v iv iv iv",
                "VI VI v III i i i",
                "iv VII III III iv i VII",
                "v v VII VI",
                "iv III i i i i v iv",
                "iv v iv i III iv iv",
                "iv v iv v i VII iv i",
                "III VII VI VII III III v VII",
                "III VII VI v VI",
                "III v VI iv v VII iv",
                "VII v VI iv i VI VII",
                "VI III III i i iv i",
                "VI i VII III VII iv iv",
                "VI iv VII III III i v v",
                "VI v iv III v iv",
                "i VI i III III VII VII VI",
                "III iv III III v III v",
                "VI VII iv i i v iv",
                "VI VI III III VII",
                "i III v VII iv iv iv",
                "iv VII VI VII v VII VII VI",
                "iv VII i v VII",
                "v VII iv v VI III VI iv",
                "v VI i v VII iv",
                "v i VI VI III v i",
                "v v VII III VI iv v",
                "v v VI i i III i v",
                "I IV vi I ii I iii V",
                "I I ii V iii vi vi IV",
                "I iii vi V I I ii",
                "I vi I V vi vi IV",
                "I vi ii ii ii ii IV",
                "V V IV IV ii V V I",
                "V ii I ii I V",
                "V vi V iii ii IV IV",
                "V vi iii V ii V",
                "V iii vi iii",
                "ii V IV ii vi iii iii",
                "ii V I V IV V vi V",
                "iii IV IV ii V ii V",
                "iii vi V ii ii iii",
                "iii vi iii vi V I I",
                "vi IV ii ii I I iii",
                "vi vi ii ii iii IV IV IV",
                "V IV I iii vi",
                "ii V I vi IV ii",
                "iii IV vi vi V I IV",
                "I IV V I vi ii V IV",
                "I I iii IV V IV vi",
                "I V V ii I I",
                "I ii V V vi I I I",
                "V IV V IV IV I I",
                "V I vi ii I IV iii",
                "V iii I V I vi IV",
                "V vi iii V V V",
                "ii V vi iii iii iii I",
                "ii iii V iii V V",
                "ii vi vi I I IV I V",
                "iii IV vi V I I IV",
                "iii V iii V IV I vi I",
                "iii vi vi ii vi ii",
                "vi IV ii vi IV I I V",
                "vi IV vi ii iii V",
                "vi vi iii IV IV I ii",
                "I V I I",
                "vi IV IV iii vi iii vi",
                "ii IV IV ii vi",
                "IV IV I iii iii vi IV",
                "IV IV I iii vi V I",
                "IV vi I I vi iii",
                "I ii IV V ii vi I V",
                "V IV I vi vi I ii IV",
                "V V V iii iii V iii",
                "V V ii I V vi iii ii",
                "V vi IV iii ii I ii V",
                "V V IV vi V vi IV",
                "V ii vi IV V V IV",
                "ii I IV I I vi iii",
                "ii I vi ii IV ii iii ii",
                "ii ii vi ii ii ii IV ii",
                "vi I V IV vi I ii",
                "vi V iii V vi I IV ii",
                "vi ii I I ii vi",
                "vi iii iii IV ii IV",
                "vi I vi iii vi ii",
                "IV IV IV V",
                "I ii ii V IV I I",
                "IV I V I V I",
                "IV ii vi I iii",
                "V IV vi IV I I IV",
                "V IV vi iii V IV",
                "iii IV ii I ii ii vi",
                "iii IV ii ii V IV",
                "iii V I I ii vi V",
                "iii ii IV V I iii vi IV",
                "iii ii vi iii V iii IV V",
                "iii ii vi I V iii",
                "iii vi V I ii ii IV I",
                "iii vi iii IV IV IV I",
                "vi I IV ii ii I V",
                "vi I ii ii iii iii I",
                "IV I IV I V ii",
                "IV iii IV I ii iii",
                "IV ii IV",
                "I iii IV I V ii",
                "vi I ii IV V",
                "V IV ii IV I",
                "IV I IV ii I V I",
                "IV ii IV iii I I vi",
                "I V V IV V V V I",
                "I ii IV I vi ii V vi",
                "I vi iii IV IV vi",
                "I vi IV I ii V",
                "V iii ii IV vi vi",
                "ii ii ii V IV V ii I",
                "iii ii IV ii vi I V",
                "iii iii I V iii I ii ii",
                "iii iii I iii vi V",
                "vi ii vi iii I I IV",
                "vi vi vi vi I V IV",
                "vi vi I I I vi IV",
                "IV IV iii vi V V",
                "ii I IV vi ii vi iii",
                "ii I I ii I vi I",
                "iii I V IV ii IV ii",
                "iii V ii V IV vi I",
                "iii I I I I vi",
                "III III VII iv VII i iv v",
                "III VI VII i VII v",
                "III VI iv i i iv VI VI",
                "III i VII III VI",
                "III v III III VI iv iv",
                "VII III i v",
                "VII VI III VI VI III iv VII",
                "VII VI i VI III VII iv III",
                "VI i VII VII VII III VI VI",
                "VI VI VI VI i v VII",
                "i III iv iv VII VI VI",
                "i VII iv i i VII VII",
                "III III VII i VII III",
                "VI i VI III VI VII VII",
                "III III v iv iv i",
                "iv VI iv iv III v",
                "iv i iv III III v VII",
                "iv v VI i VII v VI III",
                "v i v i VII",
                "v iv VI III i v",
                "IV iii ii I vi iii iii vi",
                "IV IV iii I ii V iii",
                "I I iii IV IV ii iii",
                "I ii iii IV iii",
                "I iii I ii IV vi",
                "I iii ii iii iii V I iii",
                "I vi IV iii IV iii I",
                "ii IV vi ii IV V I",
                "ii ii I ii iii V I ii",
                "ii iii iii V V I",
                "ii vi IV I V iii vi V",
                "ii vi ii vi I ii IV",
                "iii IV vi ii V ii V",
                "iii vi V iii vi IV IV",
                "vi IV V ii vi vi iii V",
                "vi IV ii vi ii vi vi",
                "vi IV iii vi IV I V",
                "vi iii ii V IV I V",
                "iii I ii IV iii vi vi",
                "IV V iii ii I iii",
                "IV iii V V vi IV iii",
                "IV vi iii ii I V V",
                "I V vi vi V vi ii",
                "I ii ii V ii ii ii vi",
                "I vi ii iii IV ii V I",
                "V I iii ii I vi ii I",
                "ii ii ii I IV iii iii",
                "ii ii iii V IV vi ii",
                "ii V vi iii V ii IV",
                "iii IV IV I vi iii",
                "iii I iii iii I ii",
                "iii I vi I iii I vi IV",
                "vi ii I iii V V V ii",
                "vi ii V vi vi IV V IV",
                "vi iii iii V iii vi",
                "V IV I ii vi IV",
                "V vi IV I iii I ii",
                "ii V iii ii IV",
                "ii vi IV iii iii V",
                "iii I I IV vi I V",
                "III VII III III iv III VII",
                "III VI VII i VI VI",
                "III v VI iv i",
                "VII III v VI VII VI i VII",
                "VII III v i VII VI iv",
                "VII VII i VII iv iv iv iv",
                "VII VI v iv VI III VI",
                "VII i III III iv i iv iv",
                "VII i III v v VI VII",
                "VI VI VII III i",
                "VI iv i v i i III",
                "i VI III III i VI VI VI",
                "i VI i VI v VI III",
                "i i III VII v i VI",
                "i i iv v i III",
                "i iv VII i iv iv",
                "i iv iv i iv VI v",
                "i v VI iv VII i VII iv",
                "i iv VII III",
                "v i VI VII III VI III",
                "III VII III VII iv VI iv",
                "III VI VII VII i i VII",
                "VII III v VII III VII v",
                "VII VII VI i VI v v",
                "VII VII v VII iv iv VI i",
                "VI III III iv III iv III",
                "i iv VI VII v VI III v",
                "i iv iv III VII VII v",
                "i iv iv III iv i",
                "i iv v i VII VI",
                "i v i VI VI i VII i",
                "III iv VII",
                "III iv iv iv VII",
                "VI VI iv VII VII",
                "iv VII VI v VII i v",
                "v III i VI v iv III",
                "iv III VII VI iv VI VII v",
                "iv VI VI VII i i iv",
                "v i iv III VII III III",
                "v v iv VI III v",
                "IV V ii IV I V iii",
                "IV iii V V V V V",
                "IV vi I IV V vi",
                "IV V I V V vi iii",
                "I ii ii IV V iii vi",
                "V I iii iii iii iii",
                "V V ii vi iii vi vi",
                "V ii IV V vi I V",
                "V iii V iii I IV IV iii",
                "V IV IV iii IV I",
                "ii iii V iii I ii vi",
                "iii I IV ii I V IV vi",
                "iii iii ii I ii ii I I",
                "iii iii iii V I V IV",
                "iii vi V IV vi iii V I",
                "vi IV ii ii V iii vi",
                "vi I IV ii I V I",
                "vi I vi IV ii iii I vi",
                "vi V vi V iii I V V",
                "ii ii V iii iii ii",
                "IV I ii IV vi iii V",
                "IV V vi I iii IV ii",
                "IV ii IV I IV IV IV",
                "IV ii iii vi V iii ii I",
                "I V I ii ii V ii ii",
                "I ii iii I I I vi",
                "V I I vi vi iii IV V",
                "V I iii iii IV I I iii",
                "V iii ii iii iii vi",
                "V vi IV vi I ii I IV",
                "ii V V I IV iii I vi",
                "ii iii vi vi V ii I I",
                "iii I iii IV V V ii I",
                "iii vi IV iii vi V ii IV",
                "vi V ii vi ii iii",
                "vi V iii ii",
                "vi ii vi vi V",
                "IV V IV IV ii ii vi",
                "IV ii V vi iii V",
                "iii vi iii I ii ii",
                "IV IV vi iii ii V",
                "IV I IV ii ii I",
                "IV V V iii iii ii",
                "I V vi V V",
                "I V ii I vi",
                "I V iii vi",
                "ii I vi ii IV vi",
                "ii iii IV IV V ii",
                "ii iii I IV I",
                "ii iii iii vi iii vi",
                "ii vi iii iii IV V",
                "iii IV iii IV ii",
                "iii I IV V V IV",
                "iii I ii I IV I",
                "iii I ii iii I iii",
                "iii V ii vi vi iii",
                "iii V vi V V",
                "iii IV ii V IV",
                "iii IV vi I",
                "iii ii I iii vi",
                "I I VII I VI VII V VI",
                "I I VII III III II V V",
                "I V III I II III III VII",
                "I VI VI IV bVII bVII II bVII",
                "I bVII bII bII I bIII bII I",
                "I III II V VII I VII VI",
                "I I bVII IV V V IV IV",
                "I V IV bIII V bVI bIII bIII",
                "I VI III VII II III I VI",
                "I bVII I I II bIII bVII II",
                "IV IV IV ii V V",
                "IV IV ii vi iii I IV",
                "IV vi V vi vi iii IV V",
                "IV vi ii IV vi iii vi V",
                "I IV IV ii IV iii ii IV",
                "I IV IV ii vi iii IV ii",
                "I I I vi V vi IV IV",
                "I I vi vi I IV vi ii",
                "I V ii IV IV iii IV",
                "I vi V IV iii vi iii",
                "I vi V ii iii I I V",
                "V ii I I vi IV iii I",
                "V IV iii vi vi iii",
                "ii IV I ii iii V IV",
                "ii ii iii IV I V IV I",
                "vi iii IV IV iii ii",
                "vi iii I iii V V ii iii",
                "IV V IV vi ii iii",
                "vi I iii I V",
                "vi ii ii I",
                "IV I IV I vi V",
                "IV V ii ii I vi vi V",
                "IV iii V IV iii vi ii iii",
                "IV iii vi I IV V",
                "I IV iii IV ii iii ii",
                "I I vi vi I vi",
                "V I V iii vi iii IV",
                "V V vi iii I iii IV",
                "V iii iii V IV iii vi vi",
                "V vi ii iii ii iii",
                "ii iii V vi vi iii",
                "iii vi IV V IV",
                "iii ii IV I IV IV",
                "vi iii IV IV V ii I V",
                "vi iii iii V vi ii ii ii",
                "vi vi ii IV iii vi",
                "vi V V V V ii iii",
                "I I ii vi vi vi iii",
                "ii iii V V IV iii IV",
                "ii iii ii I IV iii",
                "III III iv VII III i iv iv",
                "III VII VII VII VII v v III",
                "III i i iv iv VII i i",
                "III i VII III",
                "VII III v III iv i VI",
                "VI III VI III i iv i VI",
                "i VI III v VII i VII i",
                "i VI VII III iv III iv",
                "i iv III III VII VI",
                "i v VII III VI III v VI",
                "III v VI i VI VII v",
                "VI iv VI III III III",
                "i III i VII i VII",
                "iv i v iv VII v",
                "v VII VI i III VI iv",
                "iv VI i III III iv VI",
                "iv VI v VII i i",
                "v i VI i iv VI v",
                "v v i iv VII v VII",
                "v v v VI III v VII",
                "IV iii I vi I IV V",
                "IV iii vi ii IV vi",
                "IV iii vi IV I I",
                "IV IV I I ii iii",
                "I iii I IV iii V vi",
                "I iii ii ii iii vi",
                "I iii vi vi IV vi IV",
                "I vi IV IV iii I iii V",
                "V ii iii ii iii iii",
                "V iii ii V I iii ii iii",
                "V iii V IV IV IV vi",
                "ii IV I IV vi ii ii ii",
                "ii I I vi I I",
                "ii iii IV IV vi IV ii",
                "ii iii V V iii ii I vi",
                "iii iii vi IV ii vi iii",
                "vi V V IV iii I IV",
                "vi ii vi vi vi I",
                "V iii IV vi ii",
                "ii iii V iii IV",
                "IV iii ii ii vi V IV iii",
                "I I iii V V V IV",
                "I ii V ii I I IV",
                "I iii V iii iii V V IV",
                "I iii vi IV ii ii",
                "I vi vi vi ii I I",
                "V IV ii iii I iii V",
                "V vi vi vi vi ii",
                "ii IV vi IV IV ii vi",
                "ii ii ii ii iii vi iii",
                "ii vi V V ii vi iii",
                "iii ii V iii iii vi",
                "vi IV V I I I I",
                "vi I V I iii I IV",
                "vi iii V ii vi iii vi",
                "vi iii iii ii vi",
                "vi iii IV ii V vi IV",
                "vi vi I vi ii vi",
                "I ii V I ii I",
                "iii iii I I I",
                "III III iv III VI III v iv",
                "III III iv VI III VI iv i",
                "III III v iv i III",
                "III VII iv VII v III",
                "III VI v iv iv i",
                "VII VII iv iv i VII iv",
                "VII VI VII i i i i",
                "VII i iv i i v VI VI",
                "VII iv VI III v III v",
                "VII iv i VI III VII",
                "VII iv iv i VII iv VII i",
                "VI VI VI VI v iv i",
                "VI iv i III VI iv i",
                "i v III i VI VII VII",
                "i v v VII v VI v III",
                "i iv VII iv VII III",
                "i v III III VII iv i",
                "iv VI v iv iv VI VI",
                "iv VII i iv VI VI",
                "v v v iv i i III",
                "III VII VII i III VI v v",
                "III i VII III v iv",
                "VII III VI v iv i III",
                "VII VII VII v i iv III III",
                "VII VII III VI VII III",
                "VII VI i VI iv v VI",
                "VII v VI VII III iv",
                "VII iv VI v i i i",
                "VI VII iv i iv i i VI",
                "VI VII v i III i v",
                "VI iv VII iv v VII",
                "III iv i VII i i",
                "VII VII v iv VI i",
                "iv III iv iv VII v VI",
                "v i VI iv iv i v",
                "v v VI iv VI VI",
                "iv VI v v VI VII i",
                "iv VII v VII III iv",
                "iv iv VII VI v VI",
                "v i iv iv VI VII VI",
                "IV I ii iii vi ii",
                "IV iii IV V iii ii V I",
                "IV vi IV iii vi ii vi V",
                "IV IV IV ii iii",
                "I IV vi ii iii IV ii",
                "I iii vi IV V V vi IV",
                "I iii ii IV vi ii ii",
                "I I I V V vi vi",
                "V I I vi vi iii V V",
                "V vi IV ii iii iii",
                "ii IV vi iii V IV vi IV",
                "iii I V I IV I I",
                "iii I iii iii iii ii I",
                "iii ii V vi IV IV ii vi",
                "iii vi IV vi iii vi",
                "vi ii I iii vi V",
                "vi vi ii I I V",
                "IV V vi ii I",
                "ii ii IV I iii ii",
                "ii I V iii ii",
                "IV IV I iii iii",
                "IV I iii I I I",
                "IV V iii I ii iii",
                "IV iii iii IV ii ii",
                "I IV IV I vi vi",
                "I V IV iii I IV vi",
                "I iii ii vi I V I I",
                "V IV iii ii ii ii iii",
                "V IV vi ii IV vi vi I",
                "V I V ii iii IV V",
                "V vi I iii V V iii",
                "ii V V V I I V",
                "ii ii ii IV vi V IV",
                "iii IV V vi iii IV IV",
                "vi I I ii I vi I",
                "vi iii ii IV V V iii",
                "I IV iii IV vi",
                "I IV vi iii IV",
                "ii vi ii iii IV I",
                "ii iii I ii iii",
                "IV I ii ii I ii vi",
                "IV iii ii I V IV V IV",
                "IV vi I vi ii V I",
                "I I IV I V ii IV",
                "I vi vi vi IV vi",
                "V IV I vi IV IV V V",
                "V IV ii IV vi V",
                "V I IV ii iii V V ii",
                "V V IV IV IV iii iii ii",
                "V ii V I V vi ii I",
                "V vi I I iii ii",
                "ii V V I I V ii",
                "ii vi I IV ii IV ii vi",
                "iii ii I V I iii iii vi",
                "vi iii IV ii vi V vi IV",
                "vi vi ii ii iii",
                "vi iii V V I V vi",
                "iii IV I IV vi",
                "vi iii iii V I ii IV",
                "vi iii V vi IV",
                "IV I I I iii",
                "IV vi IV ii iii IV iii V",
                "I IV IV iii IV iii vi",
                "I vi IV V I IV vi iii",
                "V IV I vi V ii IV I",
                "V IV I IV vi I IV",
                "V ii I I I I ii",
                "V iii vi ii iii I ii",
                "V vi iii IV iii I ii",
                "ii I IV I vi iii V",
                "ii V IV V vi V",
                "iii V V ii iii IV V V",
                "iii ii vi iii ii I",
                "vi IV IV V iii I ii IV",
                "vi IV I iii IV ii I IV",
                "vi I ii iii vi iii I",
                "vi I iii I ii",
                "I vi V ii IV iii",
                "I ii IV ii IV",
                "ii ii ii vi ii vi",
                "IV ii I IV iii vi IV",
                "IV iii ii I V ii iii",
                "IV V V vi V V",
                "I IV I I iii vi V V",
                "I IV ii I I ii ii",
                "I iii IV I ii iii vi",
                "I vi vi ii ii V ii iii",
                "I V V I V vi vi",
                "V I V I iii vi iii",
                "V ii V iii I vi vi",
                "V iii vi ii V ii I",
                "ii I ii iii iii iii vi",
                "ii iii IV I I iii ii I",
                "ii vi ii ii I IV V",
                "iii ii iii V V V I",
                "vi ii iii iii V IV V V",
                "vi V V V I ii iii",
                "I V vi IV V vi",
                "I iii I V vi",
                "V IV I I ii IV",
                "III VII III III VII v III",
                "III i VII VI iv i VI i",
                "III i VII i i VII VII",
                "III i iv v III VI",
                "VII III i i i v iv VII",
                "VII VI iv III VII VI iv",
                "VI iv v i VII VI III v",
                "i III III i III iv v",
                "i VI i VI iv",
                "i i iv VI v VI III iv",
                "III i iv VI III VII",
                "III iv i III i i VI",
                "VI VI III VI VI VII",
                "iv VI III i VII VII iv",
                "iv VI iv v VII",
                "iv VI III iv i v",
                "iv v VII VII III i v v",
                "iv v v i v i i",
                "v III VI v i III i iv",
                "v i iv VII iv v VII iv",
                "IV ii IV I IV IV ii",
                "IV I IV iii iii I",
                "I I IV IV V ii vi",
                "I I IV V ii IV iii",
                "I vi ii ii vi iii",
                "ii IV ii ii IV ii ii",
                "ii I iii V vi vi IV vi",
                "ii I iii iii IV iii vi I",
                "ii V IV V ii V",
                "ii V I I V V V",
                "ii vi ii iii vi ii ii I",
                "ii vi I vi",
                "iii I V ii vi ii iii ii",
                "iii ii IV ii iii IV ii IV",
                "iii ii vi V I vi",
                "vi IV V ii iii IV iii vi",
                "vi V ii vi IV vi vi iii",
                "vi ii IV I iii IV IV iii",
                "ii vi iii iii ii V",
                "iii IV ii vi iii",
                "IV I V V IV V",
                "IV iii ii V IV I vi V",
                "IV IV V vi IV iii IV",
                "I I I I IV I IV iii",
                "I I ii vi ii IV vi",
                "I V I vi iii V IV ii",
                "I ii IV vi iii ii I ii",
                "I ii IV ii ii V",
                "I ii vi IV iii I IV",
                "I ii IV ii IV",
                "V I iii V I V",
                "V V vi vi I I",
                "ii IV IV V iii iii iii",
                "ii IV V IV ii ii V iii",
                "ii I vi ii I vi I I",
                "ii ii ii vi I V",
                "ii iii I iii iii vi iii ii",
                "ii vi IV IV IV iii IV I",
                "vi V I V I iii IV",
                "IV V vi ii iii IV ii",
                "III III III VI v VII VI VI",
                "III III VII i VII VI VI",
                "VII iv VI v i VII iv",
                "VII v v iv VII VII",
                "VI iv v i v VI v",
                "VI v III III v i i",
                "i III VI v VII iv",
                "i i VI v i v i",
                "i i iv VII iv i III",
                "VI i III III i v",
                "VI v i VII VII VI",
                "VI VI v",
                "i i v iv VII",
                "v i v III v",
                "iv VII i VII VII III",
                "iv VI VII iv i VII III",
                "iv VI iv iv III v VI",
                "iv iv iv VII v VI i",
                "iv v i v v III i",
                "v III v VI VI v VI",
                "III III iv VI i i v",
                "III VII v VII VI i v VII",
                "III i i v iv III VI",
                "VII VII III iv i i III",
                "VII VI iv III VII III",
                "VII i III iv VI v v",
                "VII i VI iv VI iv VII III",
                "VII iv III v iv v",
                "VII v v III VII",
                "VI VII III i III iv",
                "VI iv VII VI VI VII iv",
                "VI v i i III v VI",
                "i III VI iv i VII",
                "i III v iv VII VII i",
                "III v VI i III III",
                "iv i VI i VII v",
                "iv VII iv III v",
                "iv iv i VI i VI VII VII",
                "iv iv i iv i III v VII",
                "iv iv v i iv VII VII",
                "IV vi IV iii I V I iii",
                "IV vi iii IV IV iii V",
                "I IV I IV V IV vi ii",
                "I I V IV I vi",
                "I I V vi vi ii",
                "I iii V I vi iii V",
                "I vi vi I I ii IV",
                "V ii I V V IV ii vi",
                "V vi ii vi V iii vi I",
                "V iii vi V IV IV ii",
                "ii vi V ii vi ii V V",
                "ii IV V ii ii I",
                "iii V vi V vi I ii",
                "iii ii iii vi ii iii iii I",
                "iii ii iii IV V I iii",
                "iii ii vi I vi iii",
                "I V IV iii ii vi",
                "V I V iii V ii V",
                "vi IV iii ii IV ii",
                "ii V iii ii I vi",
                "IV I ii ii IV I iii IV",
                "IV iii ii I ii vi",
                "IV vi I iii IV I vi V",
                "I V ii iii iii",
                "I V vi ii iii vi vi V",
                "I iii iii I vi I V",
                "V vi iii vi iii iii",
                "ii IV ii V IV V I ii",
                "ii vi ii V I ii V",
                "iii I iii I V IV iii I",
                "iii I vi V I",
                "iii vi iii IV ii ii IV",
                "vi V iii IV iii IV I",
                "vi ii vi iii V V I",
                "vi ii vi I iii vi iii",
                "vi vi I vi I ii",
                "vi I V IV",
                "IV V V iii IV V iii",
                "I I IV ii V iii",
                "V iii ii iii vi ii",
                "IV ii ii vi vi iii iii vi",
                "I V IV iii V IV ii",
                "I ii I vi iii ii V",
                "I ii V IV V V V",
                "I ii iii V iii vi V",
                "I vi vi I I V vi vi",
                "V I ii iii V vi vi V",
                "V IV I iii I iii I",
                "ii I V V V iii",
                "ii ii I IV I I I vi",
                "ii vi ii ii ii ii ii",
                "ii ii iii iii ii V",
                "iii IV I iii I iii V",
                "iii iii V iii IV IV V",
                "iii iii I iii vi IV vi",
                "iii iii V vi ii V V",
                "iii IV I vi IV vi",
                "vi I I V vi ii iii",
                "vi iii IV iii iii V I iii",
                "V IV V iii vi I",
                "IV I ii V",
                "IV vi iii iii vi V",
                "IV vi V vi V V",
                "I IV iii V vi ii iii",
                "V ii ii iii ii IV V IV",
                "V V ii V IV V V",
                "ii IV IV IV V IV IV",
                "ii V vi vi V IV IV I",
                "ii V V vi V iii iii",
                "ii ii I ii IV vi IV",
                "iii I ii IV I vi V",
                "iii iii V iii I vi IV iii",
                "iii vi IV I V iii vi vi",
                "iii V IV vi iii V IV",
                "vi vi IV V iii I ii",
                "vi vi I V V iii ii vi",
                "vi vi vi I IV vi",
                "iii IV ii I ii V",
                "vi ii IV IV I V",
                "V I iii ii IV",
                "IV IV ii ii ii IV I",
                "IV I IV V IV vi",
                "IV ii V iii ii vi I",
                "I IV V vi ii IV",
                "V iii IV I V I iii",
                "V ii ii ii iii iii",
                "ii V iii ii I vi V IV",
                "ii V vi ii V vi IV V",
                "ii ii iii vi IV vi vi",
                "ii iii V ii IV ii",
                "ii ii V I vi ii",
                "iii iii V iii IV V I ii",
                "iii iii ii IV IV vi IV ii",
                "vi ii IV IV iii V ii",
                "vi ii iii I ii iii vi",
                "vi vi I IV IV",
                "vi vi iii V IV IV V",
                "IV I ii V ii V IV",
                "iii iii iii IV V V vi",
                "iii vi IV vi vi",
                "III VII iv III VI III i",
                "III VI i VI v v VII",
                "III iv iv v III VII VI",
                "III iv iv VI v",
                "III v i v v v III VII",
                "III v v VII v v VI",
                "VII i III i III VI iv",
                "VI i v VII v VI v",
                "VI VI VI iv iv VII v",
                "VI v i iv iv VI VI VII",
                "VI iv i VI v",
                "i VI i VI i",
                "iv III i VII VI iv i",
                "iv v III III III iv v iv",
                "iv v v v i VII",
                "v VII i i VI v iv",
                "v VII VII iv iv VI VII",
                "v VI i III III III III",
                "v i III iv v III III",
                "v v VII VII III III",
                "IV I V ii vi IV V",
                "IV vi vi I vi I V",
                "IV I I iii vi I iii",
                "I IV I IV V I ii",
                "I I iii iii vi ii V",
                "I iii vi iii V IV I",
                "I iii ii vi ii I",
                "V V iii IV vi",
                "V iii vi V IV IV vi IV",
                "ii ii ii IV iii I ii iii",
                "iii V V ii ii vi vi iii",
                "iii iii V V iii V iii",
                "iii vi I ii V I",
                "vi IV vi I I I vi V",
                "vi V I V ii V V I",
                "vi V vi V V ii iii V",
                "vi iii ii ii iii I iii vi",
                "vi vi V I ii ii I IV",
                "vi IV vi vi I IV",
                "iii vi vi I",
                "IV I vi I I ii IV iii",
                "IV V V I ii V V vi",
                "IV ii ii ii iii vi",
                "IV vi V IV ii IV",
                "I IV IV ii V V iii",
                "I IV V IV IV IV ii I",
                "V vi IV ii vi ii",
                "ii ii V vi I vi I",
                "ii vi iii iii V ii vi",
                "iii I V I ii vi IV IV",
                "iii V I iii iii",
                "iii V vi I V ii ii I",
                "iii ii IV I I iii",
                "iii vi IV V iii iii vi",
                "iii ii ii V vi ii",
                "vi vi I vi vi I I",
                "vi iii V iii I iii V",
                "vi iii V IV IV",
                "iii V V vi iii ii",
                "iii ii IV",
                "III VII III III iv VI i",
                "III VII VII v v III III v",
                "III VI VII i VII VII III VI",
                "VII VI III III VI VI iv iv",
                "VII iv VI VI VI iv VI",
                "VI VII VI VII iv i VI",
                "VI VI VII iv v III",
                "VI i i VII iv v",
                "VI v VII III i III VII VII",
                "i III VI i v i VII",
                "i VI VI VII III VI VI",
                "i i v VI i VI v i",
                "VII III VII v iv v iv",
                "v v VII VI v III",
                "iv III VI i VII i III v",
                "iv v III III VII i VI iv",
                "v III VII VI v VII iv i",
                "v III v III i i VI III",
                "v VI III VII VII v iv",
                "v VI VI iv i v III",
                "III VI VI v v III v III",
                "III VI i i III i",
                "III VI iv v iv VI VI VII",
                "III iv VI iv iv i",
                "III v iv v v i VII VI",
                "VII VI III iv iv i VII",
                "VII iv v III iv III i",
                "VII iv III VI iv i iv",
                "VI VII v VII III iv iv VII",
                "VI VI III i i",
                "VI iv i VI i",
                "i iv iv iv III",
                "i iv v v iv v v",
                "VI v VII VII III v",
                "iv III VII i VI",
                "iv iv VI v v VI VII",
                "v VII iv i iv v III",
                "v VI v v v VII",
                "v III VI iv v VII",
                "v v iv v iv iv",
                "IV IV V V vi iii",
                "IV V V iii V I V",
                "IV ii ii V V vi",
                "IV vi iii iii IV iii IV vi",
                "I IV vi vi ii ii iii I",
                "I iii I ii vi vi vi V",
                "I vi V V vi IV IV I",
                "V ii IV ii IV I iii",
                "V vi iii vi I",
                "ii I I V iii V I",
                "ii V I ii ii iii IV",
                "ii V ii vi ii IV",
                "ii vi vi V IV vi",
                "ii ii ii V IV iii ii",
                "iii iii IV IV vi iii V",
                "iii iii I IV iii ii ii ii",
                "vi V iii vi IV iii V I",
                "vi vi ii V I iii",
                "I vi vi V V I",
                "iii ii ii ii I V vi",
                "IV IV iii V IV I iii",
                "IV ii ii iii IV I vi ii",
                "IV iii vi ii IV IV IV",
                "IV ii I iii iii ii",
                "IV vi I V",
                "IV IV V I I I",
                "I IV vi V IV V iii V",
                "I I iii IV vi ii",
                "I V ii IV IV vi vi vi",
                "I ii ii V I ii V V",
                "I iii vi vi V ii V iii",
                "V ii I iii ii ii iii IV",
                "ii V vi ii vi V",
                "ii ii V IV V V",
                "iii ii V IV iii ii I",
                "iii iii iii I V ii I",
                "iii ii vi iii I ii I",
                "vi IV vi IV ii IV",
                "vi I vi iii V V iii IV",
                "I IV iii",
                "IV V I iii V iii vi ii",
                "IV iii vi IV ii I ii",
                "IV V V I ii vi",
                "I IV iii I iii iii ii",
                "I I ii iii I vi V I",
                "I V vi IV IV IV V",
                "I ii IV iii ii vi iii",
                "I ii iii V V IV ii",
                "V I IV iii iii iii vi",
                "V I ii I vi I vi vi",
                "V V ii vi iii iii I iii",
                "V ii vi iii ii V ii",
                "V iii V IV iii IV ii",
                "V iii iii vi V V vi vi",
                "ii V V ii ii iii ii",
                "iii V vi I V vi IV",
                "iii ii vi I iii vi IV iii",
                "vi ii iii ii iii IV",
                "I I IV vi V I IV",
                "iii vi iii V V IV ii",
                "IV I I iii I I vi V",
                "IV vi I I V ii ii vi",
                "IV vi I vi V V vi V",
                "I IV iii V ii iii IV",
                "I I I I I I I",
                "I I ii IV I IV ii",
                "I V I I I IV I",
                "I V iii vi iii ii vi",
                "V I ii I vi I",
                "V V vi ii iii ii",
                "ii I iii iii IV V vi",
                "ii V V vi V I vi",
                "iii IV IV IV I iii ii I",
                "iii I V I iii ii vi IV",
                "iii I vi IV I I I vi",
                "iii ii IV I iii I",
                "iii vi IV vi IV vi vi ii",
                "iii vi I vi iii vi iii IV",
                "vi IV V IV I IV I",
                "vi iii ii I iii ii iii",
                "IV IV I ii vi vi iii",
                "IV V V I vi ii ii I",
                "IV V V V iii I ii",
                "IV iii V I I I",
                "I I I iii I V iii V",
                "I I vi ii I V IV",
                "I V I IV vi IV",
                "I ii I V IV ii V vi",
                "I vi vi I IV ii I ii",
                "V V IV iii vi I I",
                "ii I vi vi I iii IV",
                "iii iii I IV vi vi IV",
                "vi IV ii iii I I ii vi",
                "vi I iii vi I ii V",
                "vi V V I V iii I",
                "vi iii IV iii ii I I I",
                "I IV iii IV ii IV",
                "V ii iii IV iii ii vi",
                "vi vi vi vi iii ii vi",
                "iii I V V",
                "IV ii vi I IV IV",
                "I IV iii vi ii I",
                "I ii V iii I I I IV",
                "I iii ii V I IV I V",
                "I vi iii IV I I ii iii",
                "I I ii I I ii V",
                "V V IV vi iii V vi",
                "ii ii vi I iii",
                "iii IV ii V IV I I I",
                "iii I vi vi I ii I",
                "iii iii ii I IV I",
                "iii ii I vi IV IV iii",
                "vi IV I IV V I I I",
                "vi ii iii ii iii I I I",
                "IV vi vi vi vi IV I",
                "V I ii ii V ii",
                "V ii I I I I I",
                "ii IV vi I I vi V",
                "iii IV vi iii vi I I",
                "vi I IV iii I I",
                "IV V V IV I ii ii",
                "I I V ii V vi IV vi",
                "I V I I vi vi I I",
                "I V I I I I I",
                "I V IV V ii vi V",
                "V I iii IV iii IV ii vi",
                "V ii IV I iii I V",
                "V vi I iii I I I",
                "ii I I IV V I I ii",
                "ii I I I V I iii IV",
                "ii V V IV iii iii I",
                "ii iii IV V vi vi iii",
                "iii I I iii IV vi vi iii",
                "iii vi IV V I vi",
                "iii vi iii V ii vi",
                "vi vi iii ii ii I ii vi",
                "I I ii V iii iii iii",
                "iii IV V I I IV IV",
                "iii iii I V vi I vi",
                "iii V ii I ii V",
                "IV I V I IV iii IV",
                "IV V iii I vi I IV",
                "IV ii I ii vi IV iii I",
                "IV vi I I V I ii",
                "I I IV vi ii IV ii",
                "I I I ii vi iii ii I",
                "I iii I I iii ii V IV",
                "I iii V I I I I iii",
                "V I ii IV vi ii V I",
                "V ii I iii IV V ii",
                "ii IV iii IV vi",
                "ii ii iii vi IV ii",
                "iii ii ii I V V IV",
                "iii IV V V I ii",
                "vi iii iii I iii vi I",
                "vi I I IV I V",
                "vi V ii iii iii ii IV",
                "IV I ii ii iii vi I",
                "I I IV ii I I ii",
                "I ii I I vi IV I",
                "IV IV IV vi I IV vi",
                "IV I IV V IV vi ii vi",
                "IV I I ii iii I I I",
                "IV ii iii vi I IV vi iii",
                "IV ii vi V ii iii V iii",
                "IV vi ii I I V iii",
                "IV I iii I vi I",
                "IV V I IV IV I ii",
                "I IV I I V iii vi iii",
                "I I iii ii IV vi I IV",
                "I V vi I I I ii I",
                "I ii I V IV I V",
                "I ii I ii ii I I IV",
                "I ii I I ii IV",
                "I iii IV IV I IV",
                "I iii V I V iii I V",
                "I vi I I iii I I vi",
                "I iii vi ii ii I iii",
                "I vi V I iii IV",
                "V IV ii ii iii vi ii ii",
                "V vi V IV I I iii iii",
                "V I ii IV IV I",
                "ii I I I V iii",
                "ii I I vi I I IV",
                "ii I iii ii IV vi I iii",
                "ii iii I I I IV I IV",
                "ii iii ii ii I I I iii",
                "iii V V vi ii iii V ii",
                "iii vi iii vi I I iii iii",
                "iii I vi vi I IV",
                "vi IV iii vi I IV iii",
                "vi I V iii I IV V vi",
                "vi iii ii I IV iii V vi",
                "IV ii I vi vi I",
                "I IV vi I iii V IV",
                "I V V ii iii I I",
                "V ii ii iii vi vi",
                "V IV vi IV I",
                "ii I iii IV ii I iii",
                "I IV iii iii vi I",
                "IV IV I vi vi vi IV vi",
                "IV ii I I I ii ii",
                "IV iii I IV vi vi I I",
                "IV iii iii iii ii V I",
                "IV vi I I iii ii vi vi",
                "IV V iii ii I vi iii",
                "I IV iii IV iii IV ii V",
                "I I ii ii iii vi iii",
                "I V V I I I I I",
                "I vi IV iii IV I I I",
                "V I ii ii ii iii I ii",
                "V I vi IV IV I ii IV",
                "V I vi iii I V I V",
                "V V IV IV I vi I I",
                "ii IV I ii vi I",
                "ii I I iii ii ii iii",
                "iii ii IV V I I",
                "iii ii IV iii vi vi V",
                "iii iii I V vi iii I",
                "vi I vi V V I",
                "IV I IV I IV IV iii V",
                "I I IV ii V iii I V",
                "I I V V V iii V ii",
                "I V I V iii I V V",
                "I V iii I I vi",
                "I V I iii ii vi vi",
                "I ii I IV ii I IV iii",
                "I vi I ii iii vi vi ii",
                "I V I I ii",
                "V I iii ii I I ii IV",
                "ii I I I IV iii",
                "ii ii IV iii",
                "iii IV I I V iii",
                "iii I iii IV ii ii vi V",
                "iii I vi V iii IV ii ii",
                "iii ii I I ii vi I IV",
                "iii I V IV vi",
                "vi I I vi ii I iii I",
                "vi I vi V IV iii I",
                "vi ii V ii I vi",
                "IV V I IV vi ii vi",
                "IV ii vi V I iii ii",
                "IV iii I I iii I I",
                "IV IV V I ii vi I",
                "I ii I iii V vi V",
                "I vi I iii V",
                "V IV V iii iii ii V",
                "V I ii I I vi IV",
                "ii IV IV iii ii I V V",
                "ii IV I IV IV I IV",
                "ii IV I I IV ii ii",
                "ii I iii I IV I",
                "ii ii ii ii vi",
                "ii vi I I I",
                "iii ii I iii IV",
                "vi IV I I V vi I iii",
                "vi I ii iii I vi iii",
                "vi V iii vi ii IV ii",
                "vi V vi vi vi vi I V",
                "vi ii I vi",
                "IV IV iii vi I IV I iii",
                "IV I IV vi V IV I vi",
                "I I I IV ii ii iii V",
                "I I iii I iii IV V",
                "I V IV ii IV I I",
                "I vi IV V IV I ii iii",
                "I vi iii ii I IV ii iii",
                "V IV vi V iii IV I V",
                "V V iii IV I vi iii",
                "V V vi ii iii I I I",
                "V vi ii I IV V V V",
                "ii I V I I IV iii IV",
                "ii vi vi I IV vi",
                "iii iii I iii vi iii I",
                "iii iii I IV vi V",
                "vi I ii I I IV iii V",
                "vi vi V vi vi ii",
                "I V IV IV vi ii",
                "iii IV vi I vi vi",
                "iii ii vi iii I I I",
                "IV I I vi I vi iii iii",
                "IV I ii IV iii I vi",
                "IV vi vi ii ii vi V iii",
                "IV ii IV V I vi",
                "IV V IV ii iii I",
                "I IV ii ii ii I ii",
                "I I iii iii vi I IV",
                "I V IV iii vi V V",
                "I ii IV ii iii vi iii",
                "V I iii V vi V iii V",
                "V I ii I I I vi",
                "V vi ii iii I iii",
                "ii I IV I IV vi",
                "iii IV ii vi V IV I I",
                "iii vi vi I ii",
                "iii vi ii I iii ii I",
                "vi I ii ii V iii vi",
                "vi V ii IV I ii I",
                "V V IV V IV ii",
                "iii I iii V ii IV",
                "IV I V ii iii ii ii",
                "IV ii I ii I ii ii",
                "IV iii iii vi ii I IV ii",
                "I I I ii iii I I",
                "I I iii iii IV IV I",
                "I V ii vi IV I ii I",
                "I V vi V I ii I IV",
                "I ii IV I V I I",
                "I iii IV I vi I V IV",
                "I IV vi I I iii ii",
                "I V vi V vi iii",
                "V IV V ii vi ii",
                "V I iii V vi",
                "V I vi V IV ii ii ii",
                "ii IV ii I iii IV IV I",
                "ii iii iii iii iii vi V iii",
                "iii IV iii IV iii IV I",
                "iii V vi iii I iii V I",
                "vi V I I iii ii iii ii",
                "vi vi iii V iii",
                "IV V ii vi I vi iii I",
                "IV iii vi I IV V ii iii",
                "I I iii vi iii vi ii",
                "I V I ii I V ii",
                "I V V vi iii V vi ii",
                "I ii V I I I IV I",
                "I ii ii iii I IV IV iii",
                "I I iii V vi I",
                "V I V iii iii iii ii I",
                "V vi V iii V I vi iii",
                "V I vi iii vi",
                "ii iii V I iii",
                "iii V iii I vi IV vi IV",
                "iii iii I I ii I V",
                "vi I IV ii IV IV I I",
                "vi vi I iii I iii iii IV",
                "IV I I I V I",
                "V ii V I iii vi",
                "iii ii V ii I",
                "vi vi vi I IV",
                "I II III bV V VI bVII VI V bV III II",
                "I VII bII VII I VII bII VII",
                "I II I bVII I VI II I bVII",
                "I I II II I I II II",
                "I bVII I bVII I bVII I bVII",
                "I bII I bVII bII I I bVII bII",
                "I bVII bVI bVII I bVII bVI bVII",
                "I bVI I bVII I bVI I bVII I bII bVII I bVII",
                "I I I I I I I I",
                "I I I IV I I I I I I I I"
              ]
            }
          },
          "bordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "focusbordercolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "appearance": 1,
          "lcdbgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "lcdcolor": [
            0.76,
            0.61,
            1,
            1
          ]
        }
      },
      {
        "box": {
          "id": "presetmsg",
          "maxclass": "newobj",
          "text": "prepend preset",
          "patching_rect": [
            800,
            450,
            100,
            22
          ]
        }
      },
      {
        "box": {
          "id": "pageinit",
          "maxclass": "newobj",
          "text": "loadmess page 0",
          "patching_rect": [
            800,
            500,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "progressionbuttonpress",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            900,
            20,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "backbuttonpress",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            900,
            20,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "shufflebutton",
          "varname": "shufflebutton",
          "fontname": "Segoe UI Symbol",
          "presentation": 1,
          "presentation_rect": [
            129,
            3,
            20,
            17
          ],
          "patching_rect": [
            129,
            3,
            20,
            17
          ],
          "hidden": 1,
          "hint": "Shuffle progressions",
          "maxclass": "jsui",
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "fontsize": 17,
          "filename": "chord_action.js",
          "jsarguments": [
            "dice"
          ],
          "border": 0,
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "numinlets": 1,
          "numoutlets": 1
        }
      },
      {
        "box": {
          "id": "shufflepress",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            900,
            50,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "shufflemsg",
          "maxclass": "message",
          "text": "shuffle",
          "patching_rect": [
            900,
            80,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile0",
          "varname": "tile0",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            3,
            25,
            71,
            18
          ],
          "patching_rect": [
            3,
            25,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile0press",
          "varname": "tile0press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            100,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile0pick",
          "varname": "tile0pick",
          "maxclass": "message",
          "text": "0",
          "patching_rect": [
            950,
            100,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile1",
          "varname": "tile1",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            78,
            25,
            71,
            18
          ],
          "patching_rect": [
            78,
            25,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile1press",
          "varname": "tile1press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            150,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile1pick",
          "varname": "tile1pick",
          "maxclass": "message",
          "text": "1",
          "patching_rect": [
            950,
            150,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile2",
          "varname": "tile2",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            3,
            45,
            71,
            18
          ],
          "patching_rect": [
            3,
            45,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile2press",
          "varname": "tile2press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            200,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile2pick",
          "varname": "tile2pick",
          "maxclass": "message",
          "text": "2",
          "patching_rect": [
            950,
            200,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile3",
          "varname": "tile3",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            78,
            45,
            71,
            18
          ],
          "patching_rect": [
            78,
            45,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile3press",
          "varname": "tile3press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            250,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile3pick",
          "varname": "tile3pick",
          "maxclass": "message",
          "text": "3",
          "patching_rect": [
            950,
            250,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile4",
          "varname": "tile4",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            3,
            65,
            71,
            18
          ],
          "patching_rect": [
            3,
            65,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile4press",
          "varname": "tile4press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            300,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile4pick",
          "varname": "tile4pick",
          "maxclass": "message",
          "text": "4",
          "patching_rect": [
            950,
            300,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile5",
          "varname": "tile5",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            78,
            65,
            71,
            18
          ],
          "patching_rect": [
            78,
            65,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile5press",
          "varname": "tile5press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            350,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile5pick",
          "varname": "tile5pick",
          "maxclass": "message",
          "text": "5",
          "patching_rect": [
            950,
            350,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile6",
          "varname": "tile6",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            3,
            85,
            71,
            18
          ],
          "patching_rect": [
            3,
            85,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile6press",
          "varname": "tile6press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            400,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile6pick",
          "varname": "tile6pick",
          "maxclass": "message",
          "text": "6",
          "patching_rect": [
            950,
            400,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile7",
          "varname": "tile7",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            78,
            85,
            71,
            18
          ],
          "patching_rect": [
            78,
            85,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile7press",
          "varname": "tile7press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            450,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile7pick",
          "varname": "tile7pick",
          "maxclass": "message",
          "text": "7",
          "patching_rect": [
            950,
            450,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile8",
          "varname": "tile8",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            3,
            105,
            71,
            18
          ],
          "patching_rect": [
            3,
            105,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile8press",
          "varname": "tile8press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            500,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile8pick",
          "varname": "tile8pick",
          "maxclass": "message",
          "text": "8",
          "patching_rect": [
            950,
            500,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile9",
          "varname": "tile9",
          "text": "I V vi IV",
          "texton": "I V vi IV",
          "presentation": 1,
          "presentation_rect": [
            78,
            105,
            71,
            18
          ],
          "patching_rect": [
            78,
            105,
            71,
            18
          ],
          "hidden": 1,
          "maxclass": "live.text",
          "mode": 0,
          "appearance": 0,
          "rounded": 8,
          "parameter_enable": 0,
          "activebgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "activebgoncolor": [
            1,
            0.65,
            0.24,
            1
          ],
          "activetextcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "activetextoncolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "bordercolor": [
            0.1,
            0.1,
            0.1,
            1
          ],
          "fontsize": 9
        }
      },
      {
        "box": {
          "id": "tile9press",
          "varname": "tile9press",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            950,
            550,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "tile9pick",
          "varname": "tile9pick",
          "maxclass": "message",
          "text": "9",
          "patching_rect": [
            950,
            550,
            60,
            22
          ]
        }
      },
      {
        "box": {
          "id": "browse",
          "varname": "browse",
          "maxclass": "umenu",
          "presentation": 1,
          "presentation_rect": [
            3,
            3,
            122,
            17
          ],
          "patching_rect": [
            3,
            3,
            122,
            17
          ],
          "hidden": 1,
          "fontsize": 9,
          "bgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "textcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "elementcolor": [
            0.76,
            0.61,
            1,
            1
          ],
          "bgfillcolor_type": "color",
          "bgfillcolor_color": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "parameter_enable": 0
        }
      },
      {
        "box": {
          "id": "searchinput",
          "varname": "searchinput",
          "maxclass": "textedit",
          "text": "",
          "keymode": 1,
          "bangmode": 0,
          "outputmode": 1,
          "lines": 1,
          "wordwrap": 0,
          "border": 0,
          "fontsize": 9,
          "bgcolor": [
            0.18,
            0.18,
            0.18,
            1
          ],
          "textcolor": [
            0.85,
            0.85,
            0.85,
            1
          ],
          "hint": "Find progressions. Results update while typing; clear to restore the previous set.",
          "presentation": 1,
          "presentation_rect": [
            3,
            131,
            72,
            15
          ],
          "patching_rect": [
            3,
            131,
            72,
            15
          ],
          "hidden": 1
        }
      },
      {
        "box": {
          "id": "searchroute",
          "maxclass": "newobj",
          "text": "route text",
          "patching_rect": [
            1000,
            500,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "searchprepend",
          "maxclass": "newobj",
          "text": "prepend search",
          "patching_rect": [
            1000,
            500,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "browseprepend",
          "maxclass": "newobj",
          "text": "prepend browse",
          "patching_rect": [
            1000,
            500,
            110,
            22
          ]
        }
      },
      {
        "box": {
          "id": "searchplaceholder",
          "varname": "searchplaceholder",
          "maxclass": "comment",
          "text": "Find",
          "fontsize": 9,
          "textcolor": [
            0.5,
            0.5,
            0.5,
            1
          ],
          "presentation": 1,
          "presentation_rect": [
            6,
            132,
            66,
            13
          ],
          "patching_rect": [
            6,
            132,
            66,
            13
          ],
          "hidden": 1,
          "ignoreclick": 1
        }
      },
      {
        "box": {
          "id": "searchdefer",
          "maxclass": "newobj",
          "text": "deferlow",
          "patching_rect": [
            1100,
            520,
            55,
            22
          ]
        }
      },
      {
        "box": {
          "id": "searchbang",
          "maxclass": "newobj",
          "text": "t b",
          "patching_rect": [
            1100,
            520,
            55,
            22
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "in",
            1
          ],
          "destination": [
            "gen",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "in",
            0
          ],
          "destination": [
            "bang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "bang",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gen",
            0
          ],
          "destination": [
            "out",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "parameter-update",
            1
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "parameter-update",
            0
          ],
          "destination": [
            "in",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "octaves",
            0
          ],
          "destination": [
            "octavesmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "octavesmsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pattern",
            0
          ],
          "destination": [
            "patternmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "patternmsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "segments",
            0
          ],
          "destination": [
            "segmentsmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "segmentsmsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "density",
            0
          ],
          "destination": [
            "densitymsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "densitymsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "register",
            0
          ],
          "destination": [
            "registermsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "registermsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "strum",
            0
          ],
          "destination": [
            "strummsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "strummsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "velocity",
            0
          ],
          "destination": [
            "velocitymsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "velocitymsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gate",
            0
          ],
          "destination": [
            "gatemsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "gatemsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "segments",
            0
          ],
          "destination": [
            "segmentsreadoutset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "segmentsreadoutset",
            0
          ],
          "destination": [
            "segmentsreadout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "density",
            0
          ],
          "destination": [
            "densityreadoutset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "densityreadoutset",
            0
          ],
          "destination": [
            "densityreadout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "register",
            0
          ],
          "destination": [
            "registerreadoutset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "registerreadoutset",
            0
          ],
          "destination": [
            "registerreadout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rootdisplay",
            0
          ],
          "destination": [
            "startmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "startmsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "motion",
            0
          ],
          "destination": [
            "motionmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "motionmsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rootdisplayselect",
            0
          ],
          "destination": [
            "rootdisplay",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "rootdisplay",
            0
          ],
          "destination": [
            "rootdisplayselect",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "octavesselect",
            0
          ],
          "destination": [
            "octaves",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "octaves",
            0
          ],
          "destination": [
            "octavesselect",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "patternselect",
            0
          ],
          "destination": [
            "pattern",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pattern",
            0
          ],
          "destination": [
            "patternselect",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "progressionbuttonmsg",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "backbuttonmsg",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "preset",
            0
          ],
          "destination": [
            "presetmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "presetmsg",
            0
          ],
          "destination": [
            "parameter-update",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "pageinit",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "progressionbutton",
            0
          ],
          "destination": [
            "progressionbuttonpress",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "progressionbuttonpress",
            0
          ],
          "destination": [
            "progressionbuttonmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "backbutton",
            0
          ],
          "destination": [
            "backbuttonpress",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "backbuttonpress",
            0
          ],
          "destination": [
            "backbuttonmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shufflebutton",
            0
          ],
          "destination": [
            "shufflepress",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shufflepress",
            0
          ],
          "destination": [
            "shufflemsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "shufflemsg",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile0",
            0
          ],
          "destination": [
            "tile0press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile0press",
            0
          ],
          "destination": [
            "tile0pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile0pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile1",
            0
          ],
          "destination": [
            "tile1press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile1press",
            0
          ],
          "destination": [
            "tile1pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile1pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile2",
            0
          ],
          "destination": [
            "tile2press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile2press",
            0
          ],
          "destination": [
            "tile2pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile2pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile3",
            0
          ],
          "destination": [
            "tile3press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile3press",
            0
          ],
          "destination": [
            "tile3pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile3pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile4",
            0
          ],
          "destination": [
            "tile4press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile4press",
            0
          ],
          "destination": [
            "tile4pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile4pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile5",
            0
          ],
          "destination": [
            "tile5press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile5press",
            0
          ],
          "destination": [
            "tile5pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile5pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile6",
            0
          ],
          "destination": [
            "tile6press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile6press",
            0
          ],
          "destination": [
            "tile6pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile6pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile7",
            0
          ],
          "destination": [
            "tile7press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile7press",
            0
          ],
          "destination": [
            "tile7pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile7pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile8",
            0
          ],
          "destination": [
            "tile8press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile8press",
            0
          ],
          "destination": [
            "tile8pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile8pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile9",
            0
          ],
          "destination": [
            "tile9press",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile9press",
            0
          ],
          "destination": [
            "tile9pick",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "tile9pick",
            0
          ],
          "destination": [
            "preset",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "searchinput",
            0
          ],
          "destination": [
            "searchroute",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "searchroute",
            0
          ],
          "destination": [
            "searchprepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "searchprepend",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "browse",
            0
          ],
          "destination": [
            "browseprepend",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "browseprepend",
            0
          ],
          "destination": [
            "gen",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "searchinput",
            1
          ],
          "destination": [
            "searchdefer",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "searchdefer",
            0
          ],
          "destination": [
            "searchbang",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "searchbang",
            0
          ],
          "destination": [
            "searchinput",
            0
          ]
        }
      }
    ],
    "dependency_cache": [
      {
        "name": "scale_arp.js",
        "type": "TEXT",
        "implicit": 1
      }
    ],
    "latency": 0,
    "is_mpe": 0,
    "minimum_live_version": "",
    "minimum_max_version": "",
    "platform_compatibility": 0,
    "project": {
      "version": 1,
      "creationdate": 3590052493,
      "modificationdate": 3590052493,
      "viewrect": [
        25.0,
        124.0,
        300.0,
        500.0
      ],
      "autoorganize": 1,
      "hideprojectwindow": 1,
      "showdependencies": 1,
      "autolocalize": 0,
      "contents": {
        "patchers": {}
      },
      "layout": {},
      "searchpath": {},
      "detailsvisible": 0,
      "amxdtype": 1851877223,
      "readonly": 0,
      "devpathtype": 0,
      "devpath": ".",
      "sortmode": 0,
      "viewmode": 0,
      "includepackages": 0
    },
    "autosave": 0,
    "saved_attribute_attributes": {
      "default_plcolor": {
        "expression": ""
      }
    },
    "bgcolor": [
      0.105,
      0.108,
      0.112,
      1
    ],
    "editing_bgcolor": [
      0.105,
      0.108,
      0.112,
      1
    ]
  }
}