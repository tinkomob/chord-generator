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
      687,
      133,
      891,
      436
    ],
    "openrect": [
      0,
      0,
      152,
      147
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 10,
    "default_fontface": 0,
    "default_fontname": "Arial Bold",
    "gridonopen": 1,
    "gridsize": [
      8,
      8
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
    "devicewidth": 152,
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
            250,
            10,
            100,
            22
          ],
          "text": "live.miditool.in"
        }
      },
      {
        "box": {
          "id": "gen",
          "maxclass": "newobj",
          "patching_rect": [
            250,
            70,
            120,
            22
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
            250,
            120,
            100,
            22
          ],
          "text": "live.miditool.out"
        }
      },
      {
        "box": {
          "id": "bang",
          "maxclass": "newobj",
          "patching_rect": [
            250,
            40,
            30,
            22
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
            400,
            260,
            45,
            22
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
                "Major / I I IM-5 IM-5 IV IV V Vsus2 - Joyful Triumphant",
                "Major / I I IV iii - Hopeful Nostalgic",
                "Major / I I7 Idom7 I7 - Relaxed Playful",
                "Major / I I7 Idom7 IV - Relaxed Nostalgic",
                "Major / I IV Isus2 IV - Peaceful Hopeful",
                "Major / I IV V - Joyful Excited",
                "Major / I IV V IV - Joyful Triumphant",
                "Major / I IV ii V - Joyful Triumphant",
                "Major / I IV vi V - Joyful Hopeful",
                "Major / I IV vii iii vi ii V I - Romantic Triumphant",
                "Major / I V I IV - Joyful Playful",
                "Major / I V IV vi - Romantic Hopeful",
                "Major / I V vi IV - Hopeful Romantic",
                "Major / I V vi V - Hopeful Romantic",
                "Major / I V vi ii - Hopeful Romantic",
                "Major / I V vi iii IV - Hopeful Joyful",
                "Major / I V vi iii IV I IV V - Hopeful Joyful",
                "Major / I iii IV vi - Romantic Nostalgic",
                "Major / I iii vi IV - Romantic Hopeful",
                "Major / I iii vi Isus4 - Tender Spiritual",
                "Major / I vi I IV - Tender Nostalgic",
                "Major / I vi IV V - Romantic Hopeful",
                "Major / I vi IV iii - Nostalgic Romantic",
                "Major / I vi ii IV - Tender Nostalgic",
                "Major / I vi ii V - Nostalgic Romantic",
                "Major / I7 V7 viadd9 IV7 - Playful Joyful",
                "Major / IV I IV6 Iadd9 - Relaxed Joyful",
                "Major / IV I V vi - Joyful Romantic",
                "Major / IV I ii vi - Nostalgic Peaceful",
                "Major / IV I iii IV - Playful Joyful",
                "Major / IV IV I V - Joyful Hopeful",
                "Major / IV vi I V - Hopeful Romantic",
                "Major / IV vi IV vi - Nostalgic",
                "Major / IV vi iii I - Nostalgic Playful",
                "Major / Isus2 I vi7 visus4 - Playful Romantic",
                "Major / V I vi V - Hopeful Romantic",
                "Major / V IV vi I - Hopeful Triumphant",
                "Major / V vi IV I - Hopeful Romantic",
                "Major / ii IV V - Hopeful",
                "Major / ii IV vi V - Romantic",
                "Major / ii V I - Triumphant",
                "Major / ii V I IV - Hopeful Triumphant",
                "Major / ii7 Vadd9 I7 - Triumphant",
                "Major / iii vi IV I - Romantic Nostalgic",
                "Major / iim7 V7 iiim7 vi7 iim7 V7 - Romantic Nostalgic",
                "Major / vi IV I V - Hopeful Romantic",
                "Major / vi IV iii V - Hopeful Romantic",
                "Major / vi V IV V - Romantic Hopeful",
                "Major / vi V IV V ii V I I - Triumphant Hopeful",
                "Major / vi ii V I - Hopeful Romantic",
                "Minor / VI III i v - Nostalgic Dark",
                "Minor / VI VI i VII - Empowered",
                "Minor / VI VII i III - Triumphant Nostalgic",
                "Minor / VI VII i III VII VI iv i - New Nostalgic Mysterious",
                "Minor / VI VII v III - Rebellious Nostalgic",
                "Minor / VI i v - Sad",
                "Minor / VI i v III - Hopeful Nostalgic",
                "Minor / VI iv i v - Hopeful Tender",
                "Minor / VI7 VII i v VI7 VII i iv7 - Empowered Nostalgic",
                "Minor / VI7 VII6 i VII6 - Nostalgic Hopeful",
                "Minor / VII iv VII i - Spiritual",
                "Minor / VII iv v i - Mysterious Dark",
                "Minor / i III VII VI - Nostalgic Romantic",
                "Minor / i III VII iv - Empowered Nostalgic",
                "Minor / i III iv VI - Nostalgic Romantic",
                "Minor / i III7 VI7 iv - New Dark Romantic",
                "Minor / i VI III VII - Nostalgic Hopeful",
                "Minor / i VI III VII i VI69 III7 VII - Mysterious Spiritual",
                "Minor / i VI VII - Triumphant Rebellious",
                "Minor / i VI VII iv - Mysterious Nostalgic",
                "Minor / i VI VII v - Mysterious Rebellious",
                "Minor / i VI iv III - Sad Nostalgic",
                "Minor / i VI iv ii - Sad Tender",
                "Minor / i VI iv v - Sad Hopeful",
                "Minor / i VII III VI - Rebellious Triumphant",
                "Minor / i VII VI III - Nostalgic Hopeful",
                "Minor / i VII VI III iv VI VII i - Mysterious Surprised",
                "Minor / i VII VI VII - Rebellious Triumphant",
                "Minor / i VII VI iv - Sad Romantic",
                "Minor / i VII VIadd9 VII i v VI VIIsus4 - Nostalgic Sad",
                "Minor / i VII i v - Mysterious Nostalgic",
                "Minor / i VII i v III VII i v i - Mysterious Surprised",
                "Minor / i VII v VI - Mysterious Hopeful",
                "Minor / i i iv iv v7 ii5 v v7 - Dark Mysterious",
                "Minor / i ii v III i ii v VII - Mysterious Dramatic",
                "Minor / i ii v i - Mysterious Triumphant",
                "Minor / i iv III VI - Nostalgic Romantic",
                "Minor / i iv VI v - Sad Hopeful",
                "Minor / i iv VII i - Sad Nostalgic",
                "Minor / i iv VII v i i ii V - Mysterious Surprised",
                "Minor / i iv v - Sad Lonely",
                "Minor / i iv v iv - Mysterious Sad",
                "Minor / i v iv VII - Sad Rebellious",
                "Minor / i vdim iv VI - Dark Nostalgic",
                "Minor / i7 VI III7 VII6 i i7 III7 iv7 - Dark Nostalgic",
                "Minor / i7 VII VI7 iv7 - Nostalgic Romantic",
                "Minor / ii VI i iv - Sad Hopeful",
                "Minor / ii v i - Peaceful Hopeful",
                "Minor / ii v i iv - Peaceful Nostalgic",
                "Minor / im7 ivsus4 v7 isus4 - Mysterious Tender",
                "Minor / iv III VII i - Nostalgic Mysterious",
                "Minor / iv III vsus4 VI iv i III VI - Nostalgic Mysterious",
                "Minor / iv VI VII i - Triumphant",
                "Minor / iv VI v VII - Mysterious Hopeful",
                "Minor / iv i v VI - Nostalgic Hopeful",
                "Minor / iv v VI VII - Mysterious Rebellious",
                "Minor / v VI III i - Hopeful Nostalgic",
                "Minor / v VI v i - Sad",
                "Minor / v i iv VII - Dark Rebellious",
                "Minor / v iv i - Lonely",
                "Modal / I I7 I9 IV ivm - Romantic Nostalgic",
                "Modal / I I7 Idom7 IV ivm I - Relaxed Nostalgic",
                "Modal / I I7 Idom7 IV ivm I ivm6 Vdom7 - Relaxed Romantic",
                "Modal / I IIIM vi V - Joyful Hopeful",
                "Modal / I IIM IV I - Joyful Triumphant",
                "Modal / I IIM iii V6 - Surprised Triumphant",
                "Modal / I IV V bVIIM - Triumphant Rebellious",
                "Modal / I IV bIIIM bVIM - Nostalgic Mysterious",
                "Modal / I IV bVIIM IV - Joyful Rebellious",
                "Modal / I V bVIIM IV - Triumphant Rebellious",
                "Modal / I V ivm bVIM - Surprised Mysterious",
                "Modal / I bIIIM IV I - Romantic",
                "Modal / I bIIIM bVIIM I - Triumphant Rebellious",
                "Modal / I bIIIM bVIIM IV - Triumphant Mysterious",
                "Modal / I bIIIM bVIM bVIIM - Triumphant Hopeful",
                "Modal / I bIIM I iii - Surprised Mysterious",
                "Modal / I bIIM7 bIIIM6 bIIM7 I im bVIIM bIIM - Surprised Mysterious",
                "Modal / I bVIIM I I bVIM V - Triumphant Hopeful",
                "Modal / I bVIIM IV V - Joyful Triumphant",
                "Modal / I bVIIM bVIM IV IVsus4 IV - Hopeful Nostalgic",
                "Modal / I bVIIM bVIM bIIM - Triumphant Rebellious",
                "Modal / I bVIM I bIIM - Surprised Mysterious",
                "Modal / I bVIM IV bIIIM bVIIM - Mysterious Nostalgic",
                "Modal / I bVIM bVIIM ivm - Empowered Nostalgic",
                "Modal / I im bVII6 bVIM - Nostalgic Mysterious",
                "Modal / I ivm bIIIM bVIIM - Mysterious Nostalgic",
                "Modal / I ivm6 I I7 - New Nostalgic Tender",
                "Modal / I vi bVIM V - Surprised Mysterious",
                "Modal / I5 iii II5 #IVm IV5 vi V5 viim - Excited Triumphant",
                "Modal / I7 bIdom7 III7 ii7 V7 - Playful Surprised",
                "Modal / IIIM V VIsus4 VIM I IIM - Triumphant Surprised",
                "Modal / IV V ii im bIIIM IV - Hopeful Nostalgic",
                "Modal / VIM bVIM im bVIIM - Surprised Rebellious",
                "Modal / bIIIM V7 I - Cadence",
                "Modal / bIIIM ii bIIM I - Mysterious Surprised",
                "Modal / bIIM bVIM biii bviim - Mysterious Surprised",
                "Modal / bIIM ivm biii im - Mysterious Dark",
                "Modal / bVIIM V7 I - Cadence",
                "Modal / bVIIM bIIM bIIIM im - Mysterious Rebellious",
                "Modal / bVIM bIIIM bVIIM IV I - Triumphant Mysterious",
                "Modal / bVIM bVIIm im bIIM - Mysterious Dark",
                "Modal / bVIM vi im bVIIM - Hopeful Mysterious",
                "Modal / bVIM7 ivmadd9 I - Spiritual Nostalgic",
                "Modal / bviim I_bVII bviim I_bVII - New Dark Lonely",
                "Modal / ii IVM vm bVIIM - Mysterious Nostalgic",
                "Modal / ii bIIM I bVIIM - Mysterious Rebellious",
                "Modal / ii bVIIM7 I - Hopeful Triumphant",
                "Modal / iii im iii im7 - Anguished Mysterious",
                "Modal / im V bVIIM IV bVIM bIIIM ivm V - Mysterious Rebellious",
                "Modal / im VIM IIIM bIIM - Nostalgic Surprised",
                "Modal / im VIM bi V - Mysterious Triumphant",
                "Modal / im bIIIM IV V - Mysterious Triumphant",
                "Modal / im bIIIM IV bVIM - Mysterious Hopeful",
                "Modal / im bIIIM bVIIM IV - Romantic Nostalgic",
                "Modal / im bIIIM bVIM V - Mysterious Triumphant",
                "Modal / im bIIIsus2 IV - Mysterious Hopeful",
                "Modal / im bIIM bIIIM bIIM - Mysterious Dark",
                "Modal / im bIIM biim6 ivm - Mysterious Tender",
                "Modal / im bIIM im7 bviim - Mysterious Spiritual",
                "Modal / im bIIM ivm IIIM bIIM ivm IIIM IIIM - Mysterious Nostalgic",
                "Modal / im bIIM vm im7 - Mysterious Dark",
                "Modal / im bVIIM IV im - Cadence",
                "Modal / im bVIIM IV im - Nostalgic Mysterious",
                "Modal / im bVIIM bIIM vm - Mysterious Rebellious",
                "Modal / im bVIM im IV - Nostalgic Hopeful",
                "Modal / im bVIM ivm V - Triumphant",
                "Modal / im bviim bVIM bIIM - Mysterious Hopeful",
                "Modal / im ii vm IV - Nostalgic Hopeful",
                "Modal / im ivm9 bIIM im - Mysterious Nostalgic",
                "Modal / im ivm9 bIIM im vm ivm7 bIIM im7 - Mysterious Tender",
                "Modal / im viim_i im bii_i - New Mysterious Fearful",
                "Modal / im vm bVIIM IV - Hopeful Nostalgic",
                "Modal / im vm bVIM bIIM - Mysterious Hopeful",
                "Modal / im vm isus4 I - Hopeful Spiritual",
                "Modal / im vm ivm bIIM7 - Mysterious Dark",
                "Modal / ivm IIIM bIIM I - Cadence",
                "Modal / ivm bIIIM bIIM I - Cadence",
                "Modal / ivm bIIIM bVIM I - Cadence",
                "Modal / ivm bIIIM iim7 V - Mysterious Tender",
                "Modal / ivm im bviim bVIM - Dark",
                "Modal / vdim vdim ivm bIIIM - Fearful Mysterious",
                "Modal / vi IV I IIM - Hopeful Peaceful",
                "Modal / vi bVIIM im bVIM - New Hopeful Peaceful",
                "Modal / vi bVIM bVIIM I - Hopeful Triumphant",
                "Modal / vi viim V vi #IVdim V - Nostalgic Dark",
                "BenLeon / I I II I II II bIII IV",
                "BenLeon / I bIII bVII bVII I bII I bVII",
                "BenLeon / I I bVII bVII bIII I bVII bII",
                "BenLeon / I V V VI VI VI V bVII",
                "BenLeon / I II II IV I bIII II I",
                "BenLeon / I bVII bIII bII I bVII I bVII",
                "BenLeon / I bVII bIII bVII bII I bVII I",
                "BenLeon / I VII VII VI VII VI VI II",
                "BenLeon / I VI VI VII VII VI VII II",
                "BenLeon / I VII II VI VII VI VI VII",
                "BenLeon / I I bVII bVII bIII bII bVII I",
                "BenLeon / I bVII bII bVII I I bIII bVII",
                "BenLeon / I bIII I IV I II II II",
                "BenLeon / I II bIII IV I II I II",
                "BenLeon / I VI II VI VII VI VII VII",
                "BenLeon / I bVII bII I bIII bVII bVII I",
                "BenLeon / I III I VI III",
                "BenLeon / I II VI III",
                "BenLeon / I bII bVI bVI",
                "BenLeon / I bVII bVII bII",
                "BenLeon / I I I I",
                "BenLeon / I bVII V II",
                "BenLeon / I V V I",
                "BenLeon / I V II III",
                "BenLeon / I bIII bVII bVI bIII",
                "BenLeon / I I V IV",
                "BenLeon / I II bIII II bVII",
                "BenLeon / I I I VI VI VI",
                "BenLeon / I bII bVII I",
                "BenLeon / I III III II VI",
                "BenLeon / I I III I III",
                "BenLeon / I II V V",
                "BenLeon / I I I IV",
                "BenLeon / I II VII I",
                "BenLeon / I III V VI IV",
                "BenLeon / I bII bVII bVII",
                "BenLeon / I I bIII bIII I",
                "BenLeon / I bVI bVI V bVI bVII",
                "BenLeon / I bVII I V V",
                "BenLeon / I bIII bVII bIII",
                "BenLeon / I VII VI VI",
                "BenLeon / I VI VII III",
                "BenLeon / I II IV III V III",
                "BenLeon / I bII I bII",
                "BenLeon / I II II I",
                "BenLeon / I VI III I",
                "BenLeon / I bVII bVII IV bVII",
                "BenLeon / I I VII VI VII III",
                "BenLeon / I V II bVII bIII II",
                "BenLeon / I bVII bVII I",
                "BenLeon / I bVII bIII bVI",
                "BenLeon / I I V VI III II",
                "BenLeon / I VI IV V II",
                "BenLeon / I III I I",
                "BenLeon / I VII III I",
                "BenLeon / I bIII bVII bVII",
                "BenLeon / I II bIII bIII IV bIII",
                "BenLeon / I bII I I",
                "BenLeon / I II V III",
                "BenLeon / I I IV V",
                "BenLeon / I IV bIII I",
                "BenLeon / I II V II bVII",
                "BenLeon / I V bIII bVII IV bVI",
                "BenLeon / I VI III VII",
                "BenLeon / I V bVI bVI bIII bVI",
                "BenLeon / I VII VII VI",
                "BenLeon / I V V V",
                "BenLeon / I bIII II I bIII",
                "BenLeon / I I bVI IV IV bVII",
                "BenLeon / I bVII VI IV VI",
                "BenLeon / I VII VI I",
                "BenLeon / I bVI bIII bVII",
                "BenLeon / I I I I IV II",
                "BenLeon / I I II II",
                "BenLeon / I I I I",
                "BenLeon / I I bVI bIII",
                "BenLeon / I VII II I",
                "BenLeon / I bVI bVII bIII",
                "BenLeon / I I V V",
                "BenLeon / I VII V VII",
                "BenLeon / I VII I VII I V",
                "BenLeon / I V I III I",
                "BenLeon / I IV I I IV",
                "BenLeon / I bVII VI VI bVII IV",
                "BenLeon / I V II VII",
                "BenLeon / I II IV IV III",
                "BenLeon / I VI V bVII II",
                "BenLeon / I bIII I V",
                "BenLeon / I I bVI V",
                "BenLeon / I VII VI I",
                "BenLeon / I bVI bIII IV",
                "BenLeon / I V bVII bVII",
                "BenLeon / I bII bVII I I",
                "BenLeon / I bII bVII I",
                "BenLeon / I bVII I I",
                "BenLeon / I VII I VI",
                "BenLeon / I V III IV",
                "BenLeon / I bVI bVI IV",
                "BenLeon / I II VII I",
                "BenLeon / I I II VI",
                "BenLeon / I I VII II I",
                "BenLeon / I I bVI bVI",
                "BenLeon / I VI V IV III I",
                "BenLeon / I V II II",
                "BenLeon / I IV bVII bVI",
                "BenLeon / I IV IV IV V IV",
                "BenLeon / I IV bII bIII",
                "BenLeon / I IV bVI V IV",
                "BenLeon / I V V bVII IV",
                "BenLeon / I bII I bVII",
                "BenLeon / I V IV IV",
                "BenLeon / I V II II",
                "BenLeon / I I bII I",
                "BenLeon / I I IV I",
                "BenLeon / I I bII bII",
                "BenLeon / I I bVII bVII I",
                "BenLeon / I IV IV I III III IV V VI VI",
                "BenLeon / I I I III V IV I VI",
                "BenLeon / I II VI VI bVII VI I bVII",
                "BenLeon / I IV bVI bVI bIII I bIII bIII",
                "BenLeon / I I III V III V V VII VII",
                "BenLeon / I III IV III I III VI IV I",
                "BenLeon / I bIII V II V bIII bVI bVI",
                "BenLeon / I bIII IV I bII I IV bVI",
                "BenLeon / I I VII III V I VII VII III",
                "BenLeon / I I bIII bVI IV bII",
                "BenLeon / I I I III V III I I",
                "BenLeon / I III I III III I IV I",
                "BenLeon / I III III IV I IV",
                "BenLeon / I V IV III IV I",
                "BenLeon / I IV I VI III VI I",
                "BenLeon / I V VI IV IV III III III",
                "BenLeon / I VI IV III V IV I",
                "BenLeon / I I bVI bVI bVI bVI I I bVI",
                "BenLeon / I IV I VI VI I I III III",
                "BenLeon / I III I V III V V",
                "BenLeon / I bIII bVI V V V V bIII bIII",
                "BenLeon / IV vi IV iii vi iii vi vi",
                "BenLeon / IV vi IV vii° ii iii vi IV",
                "BenLeon / I IV ii V vi IV ii vii°",
                "BenLeon / I IV ii vi ii vii° iii I",
                "BenLeon / V I I I iii vii° iii vi",
                "BenLeon / V I vii° vii° iii IV IV vii°",
                "BenLeon / V iii I V vii° vii° vii° ii",
                "BenLeon / V iii ii vi vi ii vi IV",
                "BenLeon / V vi V vii° vi iii vii° vi",
                "BenLeon / ii ii vi vi I ii ii iii",
                "BenLeon / ii iii IV vii° IV I IV V",
                "BenLeon / ii vi iii I vi vii° IV iii",
                "BenLeon / iii I iii IV ii IV I V",
                "BenLeon / iii V vii° V vii° I IV V",
                "BenLeon / iii iii ii vii° iii vi I vi",
                "BenLeon / vi ii IV iii ii ii vii° ii",
                "BenLeon / vi vi V vi IV vi I vii°",
                "BenLeon / vii° IV V I I ii ii vii°",
                "BenLeon / vii° vi I IV IV V iii IV",
                "BenLeon / vii° vii° IV IV V I I iii",
                "BenLeon / IV V ii V I IV ii ii",
                "BenLeon / IV V ii vi iii I vi vi",
                "BenLeon / IV V vi iii vii° I vi iii",
                "BenLeon / IV iii IV iii vii° IV I iii",
                "BenLeon / IV iii vii° iii vi I vi vi",
                "BenLeon / IV vii° IV V vii° iii vi vi",
                "BenLeon / I IV vii° V V iii I IV",
                "BenLeon / I I IV vi V vii° IV IV",
                "BenLeon / I V I ii vii° iii iii V",
                "BenLeon / I ii I iii vii° ii vii° vii°",
                "BenLeon / I vi V iii IV ii vi vii°",
                "BenLeon / V ii IV V V ii vii° iii",
                "BenLeon / ii vi V ii iii I I ii",
                "BenLeon / ii vii° vii° iii V vi V IV",
                "BenLeon / iii IV ii V iii IV ii V",
                "BenLeon / vi ii IV V I V V I",
                "BenLeon / vi vi I iii ii I ii vii°",
                "BenLeon / vii° ii I IV V vii° ii iii",
                "BenLeon / vii° ii V vii° IV ii iii V",
                "BenLeon / vii° vi IV iii ii vii° V vi",
                "BenLeon / III i v iv III III VII VI",
                "BenLeon / III ii° VI VI ii° v ii° VI",
                "BenLeon / VII VII ii° VII VI ii° VII ii°",
                "BenLeon / VII i VII iv III VI i VI",
                "BenLeon / VII ii° iv ii° VII ii° III VI",
                "BenLeon / VII iv ii° III i v iv iv",
                "BenLeon / VII v i VII VI i iv VII",
                "BenLeon / VI III VII VII III ii° VII i",
                "BenLeon / VI III ii° ii° i ii° VI III",
                "BenLeon / VI VI v iv i iv v v",
                "BenLeon / i VI i ii° ii° v iv v",
                "BenLeon / ii° III v VII iv VII VI ii°",
                "BenLeon / iv VII ii° VII iv ii° VI III",
                "BenLeon / iv VI ii° iv i v III VII",
                "BenLeon / iv ii° VI VII iv iv i III",
                "BenLeon / iv v i iv VI iv v III",
                "BenLeon / iv v ii° VI VII ii° VI VII",
                "BenLeon / v ii° VI i VI i VI VI",
                "BenLeon / v ii° i iv i VII VII VI",
                "BenLeon / v v VI i VII VI ii° ii°",
                "BenLeon / IV vi ii ii IV IV iii iii",
                "BenLeon / I I ii I vi ii iii V",
                "BenLeon / I I vii° iii vii° vi vii° vi",
                "BenLeon / V I IV V ii ii ii iii",
                "BenLeon / V I I IV ii ii vi ii",
                "BenLeon / V V vi vii° I vi I ii",
                "BenLeon / V ii V vi I V V ii",
                "BenLeon / V ii ii V vi vii° vii° IV",
                "BenLeon / ii IV ii V vii° vii° I V",
                "BenLeon / ii V I iii vi vii° vii° ii",
                "BenLeon / ii V vi I V vii° ii IV",
                "BenLeon / ii vi I vi vii° V I ii",
                "BenLeon / ii vi ii IV vii° V iii vi",
                "BenLeon / iii vi I vii° ii vii° ii vii°",
                "BenLeon / iii vii° I ii V iii vii° vi",
                "BenLeon / vi IV V ii iii vii° IV vii°",
                "BenLeon / vi IV vi vi iii I vi IV",
                "BenLeon / vii° I IV IV ii vi ii vii°",
                "BenLeon / vii° V V ii V I ii IV",
                "BenLeon / vii° vi ii ii I IV iii IV",
                "BenLeon / IV IV vi IV ii vi I I",
                "BenLeon / IV V IV vi vi iii ii V",
                "BenLeon / IV ii I ii iii ii vi vi",
                "BenLeon / IV ii ii vi ii vi iii V",
                "BenLeon / IV vi iii V ii vii° I vii°",
                "BenLeon / V I I V vi vii° iii I",
                "BenLeon / V I ii vii° V I I IV",
                "BenLeon / ii IV vi ii iii vi I I",
                "BenLeon / ii V I iii iii IV vi V",
                "BenLeon / ii iii vii° iii V vii° vi V",
                "BenLeon / iii vi V vi IV vi vi ii",
                "BenLeon / vi IV ii vi I IV ii iii",
                "BenLeon / vi iii I IV vi ii IV V",
                "BenLeon / vii° IV vii° IV IV IV IV vi",
                "BenLeon / vii° V vii° vi vii° ii vi vii°",
                "BenLeon / vii° iii V iii vi vi IV IV",
                "BenLeon / vii° iii vi ii ii IV IV iii",
                "BenLeon / vii° vi iii IV V ii IV vii°",
                "BenLeon / vii° vii° I vii° I vii° ii vii°",
                "BenLeon / vii° vii° vi vii° I ii iii iii",
                "BenLeon / III iv III iv i ii° VI i",
                "BenLeon / III v v VII III v ii° VII",
                "BenLeon / VII III v ii° VI VI ii° v",
                "BenLeon / VII VI v ii° iv III iv ii°",
                "BenLeon / VII v VII III iv III III III",
                "BenLeon / VII v VI VI iv VI VII ii°",
                "BenLeon / VI VI VII v iv III III iv",
                "BenLeon / VI i VII iv iv i v v",
                "BenLeon / VI i ii° v ii° III VI III",
                "BenLeon / VI ii° III III iv i iv i",
                "BenLeon / i VI i VII v VI ii° VI",
                "BenLeon / i v iv iv i VII iv VI",
                "BenLeon / ii° VII VII III v v v III",
                "BenLeon / ii° VI v III VI III iv VII",
                "BenLeon / ii° i i i III iv VII III",
                "BenLeon / ii° ii° i iv v ii° III iv",
                "BenLeon / iv i v iv VI III III III",
                "BenLeon / v VI v iv ii° ii° iv III",
                "BenLeon / v iv VI VI VI v ii° v",
                "BenLeon / v v iv iv i ii° III ii°",
                "BenLeon / III VII VI v III ii° VI III",
                "BenLeon / III ii° iv VI i ii° VII iv",
                "BenLeon / III v VII VI i VI v VI",
                "BenLeon / VI VII III III i v iv v",
                "BenLeon / VI VII iv i v VI VI ii°",
                "BenLeon / VI i v v ii° i VI v",
                "BenLeon / VI iv v v iv v ii° VII",
                "BenLeon / i III VII VI VII v iv VI",
                "BenLeon / i i ii° i v VII iv v",
                "BenLeon / i i v v iv iv iv VII",
                "BenLeon / i iv i ii° i ii° i VI",
                "BenLeon / i v VI VI VI iv III III",
                "BenLeon / ii° III VII v ii° VII ii° ii°",
                "BenLeon / ii° ii° v VII VII i iv III",
                "BenLeon / iv III ii° VI v i i iv",
                "BenLeon / iv VI v III iv ii° VI VI",
                "BenLeon / v III ii° iv VI i VII ii°",
                "BenLeon / v VII VI VI iv III III v",
                "BenLeon / v VII iv v ii° v iv v",
                "BenLeon / v ii° i III VI v VI iv",
                "BenLeon / IV IV V vii° iii IV ii I",
                "BenLeon / IV ii IV vii° I I vii° ii",
                "BenLeon / IV ii V vi iii ii IV I",
                "BenLeon / I iii I ii IV IV V IV",
                "BenLeon / I iii vii° vii° V vii° vi ii",
                "BenLeon / I vi iii vii° ii ii vi ii",
                "BenLeon / V vii° iii I iii iii iii IV",
                "BenLeon / V vii° vii° IV vii° vii° ii ii",
                "BenLeon / ii IV I V vi I vi iii",
                "BenLeon / ii I iii IV vi iii I iii",
                "BenLeon / ii vi I vi ii vii° vii° V",
                "BenLeon / iii I vi V V vi IV iii",
                "BenLeon / iii V vii° iii ii vi IV ii",
                "BenLeon / vi ii V ii ii V I I",
                "BenLeon / vi ii vi I I I V iii",
                "BenLeon / vi iii V iii IV I V ii",
                "BenLeon / vi iii iii vi vii° V I I",
                "BenLeon / vi vi IV vi V I ii iii",
                "BenLeon / vi vi I IV I vi ii vi",
                "BenLeon / vii° I V IV vii° I ii iii",
                "BenLeon / I I I II I II I I",
                "BenLeon / IV IV IV vi I iii vii° V",
                "BenLeon / IV I vii° I V V ii vii°",
                "BenLeon / IV V V V I ii V I",
                "BenLeon / IV iii vii° I IV iii iii ii",
                "BenLeon / IV vii° vii° V IV V IV I",
                "BenLeon / IV vii° vii° vii° iii iii IV I",
                "BenLeon / I IV vi V ii IV IV V",
                "BenLeon / I ii IV V vii° iii vii° I",
                "BenLeon / V IV I I V I IV vii°",
                "BenLeon / V V IV I iii vii° ii ii",
                "BenLeon / V V I ii vi ii iii iii",
                "BenLeon / V iii I vii° I vii° I IV",
                "BenLeon / ii ii V I I iii V IV",
                "BenLeon / iii I IV IV I V vii° I",
                "BenLeon / iii vii° IV ii iii ii IV I",
                "BenLeon / vi IV I vi I vii° V IV",
                "BenLeon / vi ii V vi I V iii ii",
                "BenLeon / vi ii ii IV ii V ii vii°",
                "BenLeon / vii° IV ii ii IV ii I IV",
                "BenLeon / vii° vii° I I V IV vi I",
                "BenLeon / I bVII bVII I bVII I bVII I",
                "BenLeon / IV V iii vii° V ii iii V",
                "BenLeon / IV vii° IV ii ii vi V V",
                "BenLeon / I V I I IV V ii ii",
                "BenLeon / I V vii° IV iii V I ii",
                "BenLeon / I vi I I IV vii° vi iii",
                "BenLeon / V I ii vi ii V vii° V",
                "BenLeon / V vi V vi ii iii I V",
                "BenLeon / V vii° V I vi vii° I vii°",
                "BenLeon / V vii° ii V vii° vi iii vi",
                "BenLeon / ii V I iii IV ii I vi",
                "BenLeon / ii ii vii° I iii vii° vi iii",
                "BenLeon / ii iii vi I vi vi vi iii",
                "BenLeon / iii vii° IV V vii° vii° IV vii°",
                "BenLeon / vi IV V vi I ii vi IV",
                "BenLeon / vi iii ii ii vii° vii° V V",
                "BenLeon / vi iii vii° IV V iii IV vi",
                "BenLeon / vii° I iii vii° IV I IV iii",
                "BenLeon / vii° V vi vii° I IV vii° iii",
                "BenLeon / vii° vi I vii° vi iii IV ii",
                "BenLeon / vii° vii° V vii° vi iii vii° ii",
                "BenLeon / IV I ii iii V V iii V",
                "BenLeon / IV ii I vi vi V IV vi",
                "BenLeon / I IV iii I IV IV I I",
                "BenLeon / I IV vi ii ii IV vii° iii",
                "BenLeon / I vii° iii I vi iii I IV",
                "BenLeon / V IV ii IV I iii I vii°",
                "BenLeon / V IV vi iii ii vii° IV V",
                "BenLeon / V V iii V iii I IV IV",
                "BenLeon / V vi iii V IV ii vi vi",
                "BenLeon / ii V ii iii IV vi V V",
                "BenLeon / ii ii V I I IV V iii",
                "BenLeon / ii vi I ii iii iii ii V",
                "BenLeon / iii IV iii vi vi I V ii",
                "BenLeon / iii IV vii° iii vii° IV ii IV",
                "BenLeon / vi I I vi V I iii vi",
                "BenLeon / vi I vi ii iii iii vi IV",
                "BenLeon / vi V I vii° ii I I ii",
                "BenLeon / vi vii° ii vi vi vi vi I",
                "BenLeon / vii° IV iii iii I iii vi iii",
                "BenLeon / vii° V vii° iii ii IV I IV",
                "BenLeon / IV ii ii I ii vii° ii I",
                "BenLeon / IV ii ii vii° V V V vii°",
                "BenLeon / IV vi IV IV vii° ii iii iii",
                "BenLeon / IV vi iii ii vii° IV ii ii",
                "BenLeon / IV vii° vi ii V V vii° I",
                "BenLeon / V IV vi vii° vii° iii V iii",
                "BenLeon / V ii ii ii I ii iii I",
                "BenLeon / V vii° V V ii IV vi IV",
                "BenLeon / V vii° vi V vii° ii IV IV",
                "BenLeon / ii IV IV ii ii ii iii iii",
                "BenLeon / ii ii vii° ii vii° vii° I I",
                "BenLeon / ii vi iii V iii vii° ii I",
                "BenLeon / iii I vi vii° I vii° ii vi",
                "BenLeon / iii iii V vii° ii vii° vii° iii",
                "BenLeon / iii vii° IV I I vi V V",
                "BenLeon / vi V iii I IV I vi IV",
                "BenLeon / vii° I vi I vi I vi ii",
                "BenLeon / vii° I vi vii° IV IV iii I",
                "BenLeon / vii° iii V I I iii vii° ii",
                "BenLeon / vii° vii° V V IV vi ii vi",
                "BenLeon / III III III v ii° i III VII",
                "BenLeon / III III VII v VI III ii° III",
                "BenLeon / III VI v iv ii° iv v i",
                "BenLeon / III v iv v iv v ii° ii°",
                "BenLeon / VII III VI v i VI VII III",
                "BenLeon / VII VI iv III ii° i iv VII",
                "BenLeon / VII i v v v iv VI VII",
                "BenLeon / VI III v i VI v i ii°",
                "BenLeon / VI ii° ii° i v iv III ii°",
                "BenLeon / i i III i i iv i VII",
                "BenLeon / i i ii° iv ii° III VI VII",
                "BenLeon / i iv VII III VII v ii° v",
                "BenLeon / i iv VII VI ii° VII i v",
                "BenLeon / ii° iv iv III III III iv III",
                "BenLeon / ii° v iv ii° VII VII VII iv",
                "BenLeon / iv VII v III i III v ii°",
                "BenLeon / iv i iv III ii° VII iv VI",
                "BenLeon / iv ii° ii° v iv VII ii° v",
                "BenLeon / v III ii° v VI v v VI",
                "BenLeon / v VII VI iv VI iv VII VI",
                "BenLeon / IV IV I vi iii vi iii vii°",
                "BenLeon / IV IV ii I vi ii iii IV",
                "BenLeon / IV iii ii ii iii vi V vii°",
                "BenLeon / V IV vii° V vi vii° iii IV",
                "BenLeon / V I vi I iii I vii° I",
                "BenLeon / ii IV ii vi vii° iii IV ii",
                "BenLeon / iii IV I ii iii vi vii° iii",
                "BenLeon / iii I V vii° IV vii° V ii",
                "BenLeon / iii I vii° vi ii IV iii I",
                "BenLeon / iii vii° vii° iii vii° ii I iii",
                "BenLeon / vi IV vii° iii iii I vii° I",
                "BenLeon / vi V V V vi I vi ii",
                "BenLeon / vi V ii iii iii IV vii° V",
                "BenLeon / vi V iii IV vii° V iii iii",
                "BenLeon / vi ii ii vi ii ii iii iii",
                "BenLeon / vi vii° vi V V IV vi ii",
                "BenLeon / vii° IV iii V iii iii I vii°",
                "BenLeon / vii° iii IV vii° iii vi IV IV",
                "BenLeon / vii° iii I IV vi I vii° I",
                "BenLeon / vii° iii I ii vi IV ii IV",
                "BenLeon / IV iii vi vi vii° IV iii IV",
                "BenLeon / IV vii° IV V IV V ii IV",
                "BenLeon / I IV ii IV V vii° vi V",
                "BenLeon / I V iii IV I vi V iii",
                "BenLeon / I ii V IV I ii vi IV",
                "BenLeon / I iii I ii iii iii V IV",
                "BenLeon / I vii° ii IV iii vi V ii",
                "BenLeon / V IV ii vii° I vii° ii vii°",
                "BenLeon / V I ii ii iii ii ii I",
                "BenLeon / ii IV IV V V vii° I IV",
                "BenLeon / ii ii I vii° V vi vii° I",
                "BenLeon / ii iii vi vi vii° ii iii vi",
                "BenLeon / iii ii vi I I vi vi vii°",
                "BenLeon / vi IV I ii iii IV vii° IV",
                "BenLeon / vi V ii IV ii vii° V I",
                "BenLeon / vi ii vi vi vi ii V IV",
                "BenLeon / vi vi IV IV I iii vii° IV",
                "BenLeon / vi vii° I I ii IV ii IV",
                "BenLeon / vi vii° I ii IV vii° vii° V",
                "BenLeon / vii° ii vii° ii iii I ii vii°",
                "BenLeon / III III iv III i i III iv",
                "BenLeon / III VII i i i ii° VII i",
                "BenLeon / VII i ii° III i VI VII VII",
                "BenLeon / VII v III VII iv ii° VI VI",
                "BenLeon / VI III VI VI III ii° i ii°",
                "BenLeon / VI iv VII i VII ii° i VI",
                "BenLeon / i III v iv i ii° VII iv",
                "BenLeon / i iv III VI iv v III iv",
                "BenLeon / i v ii° v i i ii° VI",
                "BenLeon / ii° III v VII iv VI iv VI",
                "BenLeon / ii° III v VI III III III III",
                "BenLeon / ii° ii° III i III ii° III v",
                "BenLeon / ii° ii° i v ii° VI VI III",
                "BenLeon / ii° ii° ii° iv iv i VII VI",
                "BenLeon / ii° ii° ii° v iv VII v i",
                "BenLeon / ii° iv ii° iv VI III ii° i",
                "BenLeon / iv III VII iv v iv ii° v",
                "BenLeon / iv iv iv VI III ii° VII ii°",
                "BenLeon / v v i v v v i ii°",
                "BenLeon / v v iv III ii° i ii° i",
                "BenLeon / III III iv VI VII i VI v",
                "BenLeon / III III iv VI v III III i",
                "BenLeon / III VII III III VI ii° v VII",
                "BenLeon / III iv v VII VI VI III ii°",
                "BenLeon / VII v VI VII III i iv i",
                "BenLeon / VII v i VII v v VI VI",
                "BenLeon / VI VII i VII III VI v i",
                "BenLeon / VI i i VI III VII VII VII",
                "BenLeon / i III VII i i i VI v",
                "BenLeon / i VI VI ii° ii° ii° VII VII",
                "BenLeon / i i VII VI ii° i i III",
                "BenLeon / i ii° v v v III III VII",
                "BenLeon / ii° VII III v III i ii° III",
                "BenLeon / ii° VII VII i VI iv VII i",
                "BenLeon / iv VII v ii° ii° VII VII i",
                "BenLeon / iv iv iv VI VII i v i",
                "BenLeon / iv v i iv VII ii° iv iv",
                "BenLeon / v III i III VII ii° i VI",
                "BenLeon / v i III III ii° i ii° VI",
                "BenLeon / v ii° iv VI VII iv iv III",
                "BenLeon / IV ii I vii° vii° ii IV iii",
                "BenLeon / IV ii vi IV IV V ii ii",
                "BenLeon / IV iii vi vi vi ii I IV",
                "BenLeon / IV vii° IV IV I I vii° iii",
                "BenLeon / I IV iii I iii vi iii iii",
                "BenLeon / I ii ii vii° I I IV I",
                "BenLeon / I iii iii V vi vi vi vii°",
                "BenLeon / I vi ii iii vii° IV vii° IV",
                "BenLeon / ii IV IV IV IV I vii° ii",
                "BenLeon / ii IV V IV I vi ii ii",
                "BenLeon / ii I vii° I iii iii vii° IV",
                "BenLeon / iii I IV V iii ii vii° vii°",
                "BenLeon / iii I ii IV I iii I vii°",
                "BenLeon / iii I iii I iii vii° IV V",
                "BenLeon / iii V iii iii V iii ii vi",
                "BenLeon / iii iii IV IV vii° I IV vi",
                "BenLeon / vi ii vii° ii ii V ii V",
                "BenLeon / vii° ii IV iii I vii° vii° V",
                "BenLeon / vii° iii I vi IV IV IV iii",
                "BenLeon / vii° vi iii IV vi vi vi vii°",
                "BenLeon / IV I V I ii iii I ii",
                "BenLeon / IV vii° iii I IV vi IV I",
                "BenLeon / I ii iii vii° iii vii° iii iii",
                "BenLeon / V IV I ii iii vi iii vii°",
                "BenLeon / V V IV V ii V vii° iii",
                "BenLeon / V V iii ii V iii V V",
                "BenLeon / V V vii° vi V vii° vi iii",
                "BenLeon / V vi ii ii I IV ii vii°",
                "BenLeon / V vii° V vi V I I ii",
                "BenLeon / V vii° iii iii I vi vi V",
                "BenLeon / ii I vii° IV iii IV vii° V",
                "BenLeon / ii iii IV IV I IV vii° ii",
                "BenLeon / iii V vii° V IV vii° IV IV",
                "BenLeon / vi IV IV vi IV vi I vii°",
                "BenLeon / vi IV vii° V V vii° ii IV",
                "BenLeon / vi I iii ii IV ii I vi",
                "BenLeon / vi iii iii V vii° V vi I",
                "BenLeon / vi vii° I I V vii° V iii",
                "BenLeon / vi vii° iii vi IV IV vii° vi",
                "BenLeon / vii° IV iii ii vi IV I IV",
                "BenLeon / I I II III I II III I",
                "BenLeon / IV I ii vii° I vi iii vi",
                "BenLeon / IV V vii° I vi ii ii V",
                "BenLeon / IV vii° I ii vi iii vii° iii",
                "BenLeon / I I ii vi ii ii I ii",
                "BenLeon / I vi vi iii vi vi V iii",
                "BenLeon / V I vi iii vi IV vi ii",
                "BenLeon / V V ii vii° IV vii° I V",
                "BenLeon / V V iii vi IV ii IV V",
                "BenLeon / V iii iii I iii vii° vi IV",
                "BenLeon / V vii° iii iii vi ii IV vii°",
                "BenLeon / ii IV iii IV V V V V",
                "BenLeon / ii V IV vi I iii V I",
                "BenLeon / iii ii IV IV iii IV vi ii",
                "BenLeon / iii vii° vii° V ii vii° I IV",
                "BenLeon / vi I vi vi vi vii° ii vii°",
                "BenLeon / vi I vii° vii° vii° I vi ii",
                "BenLeon / vi ii IV iii iii IV I IV",
                "BenLeon / vi vii° vii° IV iii vii° iii ii",
                "BenLeon / vii° iii vii° V vi ii iii vi",
                "BenLeon / vii° vi V IV V vii° IV vi",
                "BenLeon / IV IV vii° ii V ii IV ii",
                "BenLeon / IV V IV I vii° IV I IV",
                "BenLeon / IV ii iii IV vii° I iii V",
                "BenLeon / IV iii I ii iii vii° ii vi",
                "BenLeon / IV vi IV IV IV vii° vii° IV",
                "BenLeon / IV vi vii° ii ii iii IV IV",
                "BenLeon / I I vii° V ii vi ii I",
                "BenLeon / I V ii I ii vii° V ii",
                "BenLeon / V I iii V I vi vi I",
                "BenLeon / ii I iii I iii IV I I",
                "BenLeon / ii ii IV I vi I I vi",
                "BenLeon / ii vi vii° ii ii vii° IV ii",
                "BenLeon / iii I ii vi iii vii° ii IV",
                "BenLeon / iii V iii IV V V vii° IV",
                "BenLeon / iii ii vi vii° vii° V iii vii°",
                "BenLeon / vi vi iii ii vi ii ii I",
                "BenLeon / vii° IV IV I I V I ii",
                "BenLeon / vii° I vi V ii IV vi IV",
                "BenLeon / vii° V ii IV I I ii iii",
                "BenLeon / vii° ii IV vii° I I I ii",
                "BenLeon / VII III ii° ii° iv v v v",
                "BenLeon / VII i ii° III v III III ii°",
                "BenLeon / VI VI iv III iv III ii° III",
                "BenLeon / VI ii° v v iv i v VI",
                "BenLeon / i III III III III v i III",
                "BenLeon / i III ii° iv i i i i",
                "BenLeon / i III iv VII i III iv i",
                "BenLeon / i v VI VII v iv ii° iv",
                "BenLeon / ii° III VI III VII ii° i iv",
                "BenLeon / ii° i VII III ii° VII VI ii°",
                "BenLeon / ii° i VII III iv ii° v i",
                "BenLeon / ii° i ii° III v ii° VI VI",
                "BenLeon / ii° i ii° iv III i i i",
                "BenLeon / ii° ii° iv VII i v VI i",
                "BenLeon / ii° v i i v i i v",
                "BenLeon / iv iv VI iv ii° iv v v",
                "BenLeon / iv iv ii° iv ii° III VI III",
                "BenLeon / v VI v III iv i VII iv",
                "BenLeon / v ii° iv VII iv iv VII iv",
                "BenLeon / v v III VI i v VII VI",
                "BenLeon / IV I V vi vi vii° vi vii°",
                "BenLeon / IV iii I I IV ii vi V",
                "BenLeon / IV vii° iii V IV vi I vii°",
                "BenLeon / I V iii IV iii vii° ii vii°",
                "BenLeon / I vii° V IV vi vii° vii° vii°",
                "BenLeon / V I iii vi I V IV iii",
                "BenLeon / V ii V I I I IV vii°",
                "BenLeon / V ii ii V vi vi vii° ii",
                "BenLeon / ii V V vii° vi iii vi V",
                "BenLeon / ii iii IV vii° iii V vii° ii",
                "BenLeon / ii vi ii vii° vii° IV vi V",
                "BenLeon / iii I vii° V V V V V",
                "BenLeon / iii V ii vi V vi vii° I",
                "BenLeon / iii ii I ii vi vi ii vii°",
                "BenLeon / iii iii I vii° vi vi V IV",
                "BenLeon / iii vi V IV vii° ii vi IV",
                "BenLeon / iii vi V vi iii V iii IV",
                "BenLeon / vi vi ii I I ii iii vi",
                "BenLeon / vi vii° vi IV V ii vii° vii°",
                "BenLeon / vii° iii I vii° IV IV iii V",
                "BenLeon / IV iii vi vii° IV IV I I",
                "BenLeon / IV vi V IV IV IV vi vi",
                "BenLeon / I I vii° V V IV ii iii",
                "BenLeon / I iii I V vi IV I IV",
                "BenLeon / V V vii° vii° ii iii vi vii°",
                "BenLeon / V ii ii IV I I vi V",
                "BenLeon / V vii° IV I IV V vii° vi",
                "BenLeon / V vii° iii ii iii I iii vii°",
                "BenLeon / V vii° iii iii V IV iii iii",
                "BenLeon / ii I V vi iii I iii I",
                "BenLeon / ii V V iii V vii° V vii°",
                "BenLeon / ii vi I I V vi I V",
                "BenLeon / ii vii° IV ii ii ii V iii",
                "BenLeon / iii I IV ii I I ii iii",
                "BenLeon / iii I vii° IV V I iii I",
                "BenLeon / iii vii° vii° I vi IV I I",
                "BenLeon / vi V IV IV ii I vii° V",
                "BenLeon / vi V iii IV I IV vii° ii",
                "BenLeon / vi vii° vi V ii I vii° ii",
                "BenLeon / vii° IV vii° vi iii IV I ii",
                "BenLeon / III i VI iv v III ii° III",
                "BenLeon / VII III III iv v iv VI i",
                "BenLeon / VII VII ii° III v v III VII",
                "BenLeon / VII VI ii° VII ii° v III iv",
                "BenLeon / VI VII VI III v III v i",
                "BenLeon / VI v ii° v ii° ii° iv III",
                "BenLeon / i III i VII iv iv iv VI",
                "BenLeon / i VII III iv VI ii° iv iv",
                "BenLeon / i VII i VII v VII III ii°",
                "BenLeon / i VII v ii° III iv ii° v",
                "BenLeon / i iv VII ii° iv III VII i",
                "BenLeon / ii° ii° VI iv VI i III iv",
                "BenLeon / iv III VII v i ii° VI iv",
                "BenLeon / iv VII v i III iv ii° ii°",
                "BenLeon / iv i VII III i v VI VII",
                "BenLeon / iv i ii° VI v III III III",
                "BenLeon / iv v iv VII VI i v ii°",
                "BenLeon / v III v iv ii° ii° iv v",
                "BenLeon / v VI III ii° v v III VII",
                "BenLeon / v v VI ii° i VII III v",
                "BenLeon / III ii° i VII iv ii° VI VI",
                "BenLeon / III v v iv III III i VII",
                "BenLeon / VII III iv v iv ii° v VI",
                "BenLeon / VII VII i v i III ii° VI",
                "BenLeon / VI iv iv i v VII i ii°",
                "BenLeon / i ii° VI iv i III VII ii°",
                "BenLeon / i iv i v III v ii° i",
                "BenLeon / ii° III VII III III v i v",
                "BenLeon / ii° III VI v III VI III iv",
                "BenLeon / ii° VII VII VII ii° VI ii° v",
                "BenLeon / ii° VII ii° VI iv i VII VII",
                "BenLeon / ii° iv VI VI VII v i VI",
                "BenLeon / iv i III iv ii° VI III iv",
                "BenLeon / iv iv VII VII ii° iv III v",
                "BenLeon / iv v VII v VI i v VI",
                "BenLeon / v III iv ii° iv ii° v ii°",
                "BenLeon / v III v iv III ii° i v",
                "BenLeon / v VII iv VII III VI ii° ii°",
                "BenLeon / v ii° v ii° III VI i i",
                "BenLeon / v iv VI v III ii° iv VII",
                "BenLeon / IV V I iii vii° ii V ii",
                "BenLeon / IV vii° vi iii V V vi V",
                "BenLeon / I iii IV ii V iii vii° iii",
                "BenLeon / I vii° iii ii ii ii I vi",
                "BenLeon / V V I ii ii iii vi ii",
                "BenLeon / V V ii vi IV I V vii°",
                "BenLeon / ii V V I vii° ii iii vii°",
                "BenLeon / ii ii I IV I ii ii vi",
                "BenLeon / iii I vii° V ii IV IV V",
                "BenLeon / iii iii IV vi IV ii V I",
                "BenLeon / iii iii I IV I ii V I",
                "BenLeon / vi V vi vii° vi vii° vii° I",
                "BenLeon / vi ii iii I vii° vi I IV",
                "BenLeon / vii° IV ii V vi vi V IV",
                "BenLeon / vii° V ii V I I vii° I",
                "BenLeon / vii° V iii ii IV V vii° V",
                "BenLeon / vii° ii ii V IV iii ii vi",
                "BenLeon / vii° vi V iii ii vii° vii° IV",
                "BenLeon / vii° vii° I vi vii° ii iii iii",
                "BenLeon / vii° vii° vi ii vii° vi I ii",
                "BenLeon / IV IV vii° IV IV I vii° I",
                "BenLeon / IV iii vi V ii vi iii iii",
                "BenLeon / IV vii° I vi iii ii IV iii",
                "BenLeon / I IV IV V IV vi vii° IV",
                "BenLeon / I V V ii V I V V",
                "BenLeon / I ii IV ii I vi IV iii",
                "BenLeon / I ii vii° vii° V I iii V",
                "BenLeon / V ii vi iii ii I ii iii",
                "BenLeon / V vii° vi ii IV I V ii",
                "BenLeon / ii IV vii° vii° V vii° I IV",
                "BenLeon / ii V ii vi iii IV vii° IV",
                "BenLeon / ii ii iii ii IV iii ii vii°",
                "BenLeon / ii vi vii° I IV I I vi",
                "BenLeon / ii vii° vii° vi vi I iii iii",
                "BenLeon / iii IV IV vi I vi V iii",
                "BenLeon / iii ii I IV iii I iii V",
                "BenLeon / vi I iii I vi iii V IV",
                "BenLeon / vii° iii ii I ii ii I I",
                "BenLeon / vii° vi V V vii° ii iii V",
                "BenLeon / vii° vi iii vii° ii vi vii° ii",
                "BenLeon / IV I vii° vii° IV IV iii V",
                "BenLeon / IV iii ii IV iii vii° IV V",
                "BenLeon / IV vii° vii° I iii iii iii vii°",
                "BenLeon / V I I vi vi ii vi I",
                "BenLeon / V I ii iii vi I V IV",
                "BenLeon / V V IV V vi iii V I",
                "BenLeon / V V vii° vii° ii iii IV I",
                "BenLeon / V vi iii vi I vii° iii ii",
                "BenLeon / ii vii° IV ii ii vi I iii",
                "BenLeon / iii IV vii° ii vi iii vii° V",
                "BenLeon / iii IV vii° vii° I vii° I ii",
                "BenLeon / iii V I vii° vi vii° V I",
                "BenLeon / iii ii I iii vii° IV iii vi",
                "BenLeon / vi vi iii iii I vi IV ii",
                "BenLeon / vi vi vii° ii ii I vii° vii°",
                "BenLeon / vi vii° vii° V vii° V I I",
                "BenLeon / vii° iii V iii ii ii vi V",
                "BenLeon / vii° iii iii I vi vii° vii° IV",
                "BenLeon / vii° vi iii I ii V vii° vii°",
                "BenLeon / vii° vii° IV V ii vii° I vi",
                "BenLeon / IV IV iii V vii° iii ii vi",
                "BenLeon / IV I iii vi vii° ii vi vii°",
                "BenLeon / IV iii vi IV iii vi V vi",
                "BenLeon / I V I IV ii ii I I",
                "BenLeon / I ii vi ii vii° vii° vii° V",
                "BenLeon / I iii IV ii V ii IV I",
                "BenLeon / I iii I I I I vi ii",
                "BenLeon / V V IV ii IV vi IV vi",
                "BenLeon / V ii I ii IV vii° V V",
                "BenLeon / V vi IV vi vii° IV ii iii",
                "BenLeon / ii IV V vi V vii° iii iii",
                "BenLeon / ii vi vi I V ii iii vii°",
                "BenLeon / ii vi vi iii ii ii IV IV",
                "BenLeon / ii vi vii° V IV I V vii°",
                "BenLeon / iii vii° V iii iii vi vi I",
                "BenLeon / vi V IV IV ii vii° vi vi",
                "BenLeon / vi ii ii V I vi vii° vii°",
                "BenLeon / vi vii° I vii° iii ii iii vii°",
                "BenLeon / vii° IV IV vi iii I ii ii",
                "BenLeon / vii° vi vi vii° iii IV V I",
                "BenLeon / IV vi V ii IV vi iii IV",
                "BenLeon / IV vii° V I vi vi vi iii",
                "BenLeon / I vii° IV V iii I vi I",
                "BenLeon / I vii° I ii vi vi I V",
                "BenLeon / V IV vi I iii vi V IV",
                "BenLeon / V ii vii° iii ii vii° I vii°",
                "BenLeon / V vi I vi vi I iii ii",
                "BenLeon / ii V IV I I vi ii IV",
                "BenLeon / ii V vi V ii iii ii vi",
                "BenLeon / ii V vii° IV I vii° ii V",
                "BenLeon / iii IV vi vii° vii° vi I iii",
                "BenLeon / iii ii I ii IV vi ii V",
                "BenLeon / iii vi ii I IV IV vii° I",
                "BenLeon / iii vii° iii vii° vi iii V vii°",
                "BenLeon / vi I vi vi vi vii° V I",
                "BenLeon / vi ii IV IV iii vi IV I",
                "BenLeon / vi ii V I V iii IV V",
                "BenLeon / vi ii iii vi ii vi vii° vi",
                "BenLeon / vi vi V I ii ii V V",
                "BenLeon / vii° I I IV vi ii I vii°",
                "BenLeon / III VI VI VII i VI i ii°",
                "BenLeon / III iv VI iv III v VI ii°",
                "BenLeon / III iv iv iv ii° iv ii° VI",
                "BenLeon / VII III III VII i v v i",
                "BenLeon / VII ii° iv v VII v VI VI",
                "BenLeon / VII v i i VII ii° i iv",
                "BenLeon / VI III ii° i III VII v v",
                "BenLeon / VI VI III i i v iv VI",
                "BenLeon / i v VI v ii° iv iv VI",
                "BenLeon / i v i III i VI v i",
                "BenLeon / ii° III iv VI v iv III VII",
                "BenLeon / ii° VII VI ii° VII i i ii°",
                "BenLeon / ii° iv III ii° v VII VII v",
                "BenLeon / ii° iv i v ii° v ii° i",
                "BenLeon / iv VI v VII i iv ii° ii°",
                "BenLeon / iv iv v III v VII III i",
                "BenLeon / v III v iv VII VII i v",
                "BenLeon / v VI ii° III v ii° III ii°",
                "BenLeon / v iv VI VI i III ii° ii°",
                "BenLeon / v v v VI VI v VI VII",
                "BenLeon / IV ii I vii° IV vi vii° vii°",
                "BenLeon / IV vi iii V vii° vi ii I",
                "BenLeon / I I ii I vii° I ii ii",
                "BenLeon / I ii I iii vi IV iii vi",
                "BenLeon / I iii V IV I iii I IV",
                "BenLeon / I vi V vii° vi V ii V",
                "BenLeon / V V IV vi V V vii° V",
                "BenLeon / V iii IV V IV vii° iii vii°",
                "BenLeon / iii iii V V ii V IV V",
                "BenLeon / iii iii vii° vii° vi ii ii ii",
                "BenLeon / vi V IV ii vii° iii V ii",
                "BenLeon / vi V vi V I vii° vii° ii",
                "BenLeon / vi V vi V vi I vi I",
                "BenLeon / vi V vii° vi ii ii IV IV",
                "BenLeon / vi iii IV V I IV V vii°",
                "BenLeon / vi iii vi vii° vi iii iii IV",
                "BenLeon / vii° V ii vii° ii I vii° ii",
                "BenLeon / vii° ii IV I vii° IV IV V",
                "BenLeon / vii° iii iii vii° IV vii° vi V",
                "BenLeon / vii° vi iii vi vi vii° vi vii°",
                "BenLeon / IV iii vii° I vii° IV I vi",
                "BenLeon / IV vii° iii iii ii I vi IV",
                "BenLeon / I IV ii vii° I iii I I",
                "BenLeon / I iii V vii° I IV V V",
                "BenLeon / I vii° iii vii° iii vii° ii IV",
                "BenLeon / V ii IV IV V I V vi",
                "BenLeon / V ii IV iii vii° ii IV vii°",
                "BenLeon / V iii V ii V iii ii I",
                "BenLeon / ii IV I vi V vii° V vi",
                "BenLeon / ii IV vii° vi iii iii iii I",
                "BenLeon / ii I I V vii° ii iii iii",
                "BenLeon / ii V IV V ii V iii V",
                "BenLeon / ii vii° I vi vii° ii vi ii",
                "BenLeon / iii V IV ii IV IV iii V",
                "BenLeon / iii vi vi V vi I IV V",
                "BenLeon / iii vii° V IV V iii IV ii",
                "BenLeon / iii vii° vii° iii vi iii ii vi",
                "BenLeon / vi V V IV V ii I iii",
                "BenLeon / vii° IV vi IV vi vi ii iii",
                "BenLeon / vii° iii vi vi vii° I vi ii",
                "BenLeon / III III i iv iv i VI iv",
                "BenLeon / III VI iv v v v III III",
                "BenLeon / III ii° v VII III III VII i",
                "BenLeon / III iv ii° III III i III ii°",
                "BenLeon / III iv iv ii° VII VI iv III",
                "BenLeon / III v VII ii° ii° v v iv",
                "BenLeon / III v v v III VI ii° v",
                "BenLeon / VII VII iv ii° VII iv VI III",
                "BenLeon / VII iv VII III i iv VI iv",
                "BenLeon / VI III iv iv ii° v VII v",
                "BenLeon / VI i III iv VI VI ii° v",
                "BenLeon / VI i VI VI v i III v",
                "BenLeon / i III i v v v i iv",
                "BenLeon / i ii° ii° III ii° iv v VII",
                "BenLeon / ii° i VII i VI III III i",
                "BenLeon / iv III VI v III III ii° VII",
                "BenLeon / iv VI v v III ii° v ii°",
                "BenLeon / iv ii° i III iv ii° iv v",
                "BenLeon / iv v VI i III VII III v",
                "BenLeon / v III VII v ii° III i III",
                "BenLeon / III VII III i VII VI v VI",
                "BenLeon / III VI v i VI v III i",
                "BenLeon / VII VI III iv i v v v",
                "BenLeon / VII VI VI VI III ii° i ii°",
                "BenLeon / VII VI iv v i VI III iv",
                "BenLeon / VII iv v III ii° VI i i",
                "BenLeon / VI VII i VII ii° VI VI VI",
                "BenLeon / VI VII v VI i III iv III",
                "BenLeon / i i i VI i ii° v v",
                "BenLeon / i v III iv i III iv i",
                "BenLeon / ii° VII iv VII VII ii° ii° III",
                "BenLeon / ii° i VI i VII iv v VII",
                "BenLeon / ii° iv i ii° iv iv III III",
                "BenLeon / ii° v VI i ii° VII iv VII",
                "BenLeon / ii° v v v VII ii° v v",
                "BenLeon / iv i ii° VI VI i i VII",
                "BenLeon / iv iv VII VI VI III VI VII",
                "BenLeon / v VI ii° III VII ii° v i",
                "BenLeon / v i ii° iv VII v i III",
                "BenLeon / v v i v v VII iv ii°",
                "BenLeon / IV V V V iii ii IV I",
                "BenLeon / IV iii iii IV IV vii° I I",
                "BenLeon / IV vii° IV I vii° iii iii ii",
                "BenLeon / I V ii vi vi vi IV iii",
                "BenLeon / I ii vii° vi iii vi vii° vi",
                "BenLeon / V iii vi V ii vii° vi V",
                "BenLeon / ii IV I IV V vii° ii ii",
                "BenLeon / ii V IV IV vi IV iii I",
                "BenLeon / ii vii° iii I vii° IV vi I",
                "BenLeon / iii IV V vi vi vi ii iii",
                "BenLeon / iii V IV iii IV ii ii V",
                "BenLeon / iii V I V vi I I V",
                "BenLeon / iii vi ii IV IV iii I ii",
                "BenLeon / vi I I vi I IV vii° vii°",
                "BenLeon / vi iii iii vi IV vi IV I",
                "BenLeon / vi vii° vi iii I IV IV vii°",
                "BenLeon / vii° IV I I vi ii ii vii°",
                "BenLeon / vii° IV iii I iii vii° vi V",
                "BenLeon / vii° IV iii V IV IV ii iii",
                "BenLeon / vii° vii° V vi vii° iii ii vii°",
                "BenLeon / IV iii V iii V vii° iii iii",
                "BenLeon / IV vii° V ii vii° ii IV V",
                "BenLeon / IV vii° iii V IV vii° IV vi",
                "BenLeon / I I ii IV vi vi iii vii°",
                "BenLeon / V IV IV I iii I vi vii°",
                "BenLeon / V ii vii° I vii° I V V",
                "BenLeon / ii IV I IV IV I V V",
                "BenLeon / ii IV vii° ii vii° V V V",
                "BenLeon / ii vi V vi vii° IV V vi",
                "BenLeon / ii vii° I ii vi V vi vi",
                "BenLeon / iii I vii° vi IV vii° vii° iii",
                "BenLeon / iii ii vii° iii vii° IV I IV",
                "BenLeon / vi ii IV iii V iii ii ii",
                "BenLeon / vii° I V ii IV ii I V",
                "BenLeon / vii° V iii vi ii I vi ii",
                "BenLeon / vii° V vi I IV vii° V IV",
                "BenLeon / vii° ii V IV I ii vii° iii",
                "BenLeon / vii° ii iii IV ii ii IV iii",
                "BenLeon / vii° iii ii vii° vii° vi V IV",
                "BenLeon / vii° vii° IV I I ii ii vi",
                "BenLeon / IV V vii° iii vi ii IV V",
                "BenLeon / IV ii V iii iii ii iii V",
                "BenLeon / IV iii ii vi IV vi vii° V",
                "BenLeon / IV vi V ii vi V vii° V",
                "BenLeon / IV vii° ii ii iii ii IV iii",
                "BenLeon / I iii vi IV I V IV vii°",
                "BenLeon / I vii° V V IV IV I I",
                "BenLeon / V V ii IV vi IV I iii",
                "BenLeon / ii IV V vii° vii° vi V iii",
                "BenLeon / ii V V I IV I V I",
                "BenLeon / iii I IV vi vii° vii° I I",
                "BenLeon / iii I ii iii I iii vii° iii",
                "BenLeon / iii ii I IV ii vii° IV I",
                "BenLeon / iii ii iii vii° V V V V",
                "BenLeon / iii vi IV ii vii° V iii vii°",
                "BenLeon / vi I vi I vi I IV iii",
                "BenLeon / vi ii ii V V iii IV iii",
                "BenLeon / vi vii° I vi ii iii ii iii",
                "BenLeon / vii° I V IV vi vii° vii° iii",
                "BenLeon / vii° V IV iii IV vi V ii",
                "BenLeon / IV I vii° V V iii ii V",
                "BenLeon / IV ii iii vi IV I I iii",
                "BenLeon / IV ii vi ii vi V I iii",
                "BenLeon / IV iii vi I V IV vi V",
                "BenLeon / IV vi V vi V IV ii ii",
                "BenLeon / I I ii vi iii vi ii vii°",
                "BenLeon / I iii IV ii vii° iii vii° vi",
                "BenLeon / I iii I ii vii° vii° IV IV",
                "BenLeon / V ii I ii iii ii ii vi",
                "BenLeon / V iii vi V V IV vi iii",
                "BenLeon / V vii° iii iii vii° IV ii vii°",
                "BenLeon / ii I vi vi vi iii I vii°",
                "BenLeon / ii V V vii° iii ii V vi",
                "BenLeon / iii IV I vii° vii° ii ii IV",
                "BenLeon / iii iii vi ii I vi iii IV",
                "BenLeon / vi iii I V I vi ii IV",
                "BenLeon / vi iii vi I ii iii ii vi",
                "BenLeon / vi vi iii vi ii IV IV vii°",
                "BenLeon / vii° IV ii ii I vii° V vii°",
                "BenLeon / vii° vi ii vi I IV vi IV",
                "BenLeon / IV I I I vi IV V iii",
                "BenLeon / IV vii° vii° vi ii I iii iii",
                "BenLeon / I I IV iii ii ii iii vi",
                "BenLeon / I ii I vii° iii ii I vii°",
                "BenLeon / I ii iii vii° ii vii° vii° iii",
                "BenLeon / V IV iii vi vii° IV V vii°",
                "BenLeon / V ii I iii IV vi I iii",
                "BenLeon / V iii I V ii I IV I",
                "BenLeon / V vi vi IV vi IV ii V",
                "BenLeon / ii I IV vi IV IV V ii",
                "BenLeon / ii I iii iii V IV vi V",
                "BenLeon / ii vi I V V ii vii° vii°",
                "BenLeon / iii IV vii° vii° V iii IV I",
                "BenLeon / iii I vii° vii° vii° I V IV",
                "BenLeon / vi V ii I I V I IV",
                "BenLeon / vii° IV V iii vii° IV ii vi",
                "BenLeon / vii° iii IV I ii I ii vii°",
                "BenLeon / vii° iii V I vi ii I I",
                "BenLeon / vii° vii° IV I I iii vii° vi",
                "BenLeon / vii° vii° ii vi IV ii vii° IV",
                "BenLeon / III III iv iv VI III i VII",
                "BenLeon / III VI v VI VII i v v",
                "BenLeon / III i ii° ii° iv VII iv VII",
                "BenLeon / III i iv iv III v i III",
                "BenLeon / III ii° v ii° VII v i v",
                "BenLeon / III ii° v v v VI VI VII",
                "BenLeon / VII VII ii° VII i i VI v",
                "BenLeon / VII VI ii° VII i III v i",
                "BenLeon / VII VI iv VII ii° VII VII i",
                "BenLeon / i i i III i III v VI",
                "BenLeon / i ii° v III VI v ii° i",
                "BenLeon / ii° VI VI VI VII VII v VI",
                "BenLeon / ii° iv iv VI i III i v",
                "BenLeon / ii° v ii° v v v iv VI",
                "BenLeon / iv i III ii° VI ii° i iv",
                "BenLeon / iv i VII v III VI VI i",
                "BenLeon / iv i iv VII i iv III VI",
                "BenLeon / iv iv i VI VII VII ii° v",
                "BenLeon / v III VI VII VII i III iv",
                "BenLeon / v v i ii° VI v III v",
                "BenLeon / IV I ii I V iii iii IV",
                "BenLeon / IV vi vi vi V V vii° vi",
                "BenLeon / I I ii I iii IV V V",
                "BenLeon / I V vi V vii° IV V ii",
                "BenLeon / V IV IV iii ii ii vi iii",
                "BenLeon / V vii° vi vi iii ii vii° vi",
                "BenLeon / ii I IV ii IV V ii vii°",
                "BenLeon / ii vi IV I iii iii IV V",
                "BenLeon / ii vii° iii iii iii vii° I vi",
                "BenLeon / iii V V ii ii vii° V vi",
                "BenLeon / iii iii vi vii° IV I vii° ii",
                "BenLeon / iii vi IV iii iii IV I iii",
                "BenLeon / iii vii° V iii vi vi vi ii",
                "BenLeon / vi I V vii° ii vi ii V",
                "BenLeon / vi I iii vii° V ii I IV",
                "BenLeon / vi I vi vi vi iii I vii°",
                "BenLeon / vi vii° I ii vii° IV vi vi",
                "BenLeon / vii° IV IV ii I vi V ii",
                "BenLeon / vii° ii I I vii° vi ii iii",
                "BenLeon / vii° vi vii° V V I ii I",
                "BenLeon / IV IV I I V V IV V",
                "BenLeon / IV iii I ii ii V ii IV",
                "BenLeon / IV iii ii I IV I IV iii",
                "BenLeon / IV vi iii iii vii° ii IV I",
                "BenLeon / I IV IV I IV ii IV I",
                "BenLeon / I V IV iii I IV vii° vii°",
                "BenLeon / I ii ii vii° ii vi iii iii",
                "BenLeon / I vi vii° IV iii vi vi V",
                "BenLeon / V I V I I IV ii V",
                "BenLeon / V ii I IV V IV I ii",
                "BenLeon / V vii° IV V V I vii° vi",
                "BenLeon / V vii° iii IV vi vi iii ii",
                "BenLeon / ii ii vi I V vii° vii° iii",
                "BenLeon / iii V ii vi vii° vii° IV vii°",
                "BenLeon / iii vi IV IV I vi V iii",
                "BenLeon / iii vii° vi V vi vi I ii",
                "BenLeon / vi V V iii V iii vii° V",
                "BenLeon / vii° V IV IV vii° I V I",
                "BenLeon / vii° vi iii vi IV IV V ii",
                "BenLeon / vii° vii° I ii IV ii vii° ii",
                "BenLeon / III VI ii° v iv v VI ii°",
                "BenLeon / III i ii° VII iv v III III",
                "BenLeon / VII III iv v VI III ii° ii°",
                "BenLeon / VII VI i i i VII III VII",
                "BenLeon / VII ii° VII v iv v v VI",
                "BenLeon / VII iv VII VI v v v ii°",
                "BenLeon / VII v i v VI VI ii° v",
                "BenLeon / i VII III iv III iv iv v",
                "BenLeon / i i iv ii° III ii° i ii°",
                "BenLeon / i ii° VI v VI i i VI",
                "BenLeon / i v III ii° ii° v VII v",
                "BenLeon / ii° i i III VI v VI i",
                "BenLeon / iv ii° i ii° VII VII VI VI",
                "BenLeon / iv ii° v III v VI i i",
                "BenLeon / iv v VI v iv III VI VII",
                "BenLeon / v III iv i i v v III",
                "BenLeon / v VII III iv VII VI VI iv",
                "BenLeon / v VII VI III VI III ii° iv",
                "BenLeon / v VII iv VII VII VII III VII",
                "BenLeon / v i ii° v VI i III iv",
                "BenLeon / III VII i III iv iv VI i",
                "BenLeon / VII III III ii° III III v ii°",
                "BenLeon / VII III VII iv iv ii° VI iv",
                "BenLeon / VII VII iv ii° i III ii° iv",
                "BenLeon / VII i iv VI VI VII v i",
                "BenLeon / VII v VII ii° v i VI III",
                "BenLeon / VII v ii° ii° III III VI v",
                "BenLeon / VI iv i VII i iv ii° v",
                "BenLeon / VI v VII i v III v iv",
                "BenLeon / VI v v VI i v VI VI",
                "BenLeon / i i iv III v v iv VI",
                "BenLeon / i ii° iv ii° i VI i VI",
                "BenLeon / ii° III i i VII iv v VI",
                "BenLeon / ii° VI III ii° iv VII VI iv",
                "BenLeon / ii° i VII VI v VII i i",
                "BenLeon / iv ii° iv VI VI i i v",
                "BenLeon / v i i III v v VII iv",
                "BenLeon / v i v v VII i i III",
                "BenLeon / v iv ii° i ii° VI iv i",
                "BenLeon / v v VII III i VI v VI",
                "BenLeon / IV V IV vi V V I IV",
                "BenLeon / IV V vi vii° IV IV I V",
                "BenLeon / IV ii vi IV IV vi IV iii",
                "BenLeon / I ii I I ii IV V I",
                "BenLeon / I vi IV ii vi vii° vii° ii",
                "BenLeon / V IV I IV ii ii V I",
                "BenLeon / V IV I IV iii iii vi V",
                "BenLeon / V vii° ii iii IV iii V ii",
                "BenLeon / ii IV vii° iii iii vii° iii ii",
                "BenLeon / ii I vi ii vi I I vi",
                "BenLeon / ii iii V I I vi V V",
                "BenLeon / ii vii° IV vi ii I ii ii",
                "BenLeon / iii ii ii vii° vi vii° vi IV",
                "BenLeon / iii vii° I vii° IV vii° V vi",
                "BenLeon / iii vii° ii vi V ii vi vi",
                "BenLeon / vi IV IV IV V iii ii vi",
                "BenLeon / vi IV ii IV vi vii° iii IV",
                "BenLeon / vi ii I V V iii vi IV",
                "BenLeon / vii° I IV V iii ii V I",
                "BenLeon / vii° vi vi vii° iii V IV iii",
                "BenLeon / IV IV iii V IV vii° V V",
                "BenLeon / IV V I V vi I V IV",
                "BenLeon / IV vii° iii vii° IV I V I",
                "BenLeon / I I IV vii° ii iii vi IV",
                "BenLeon / V I ii V I I V V",
                "BenLeon / ii V ii V IV iii vii° vi",
                "BenLeon / ii vi IV IV vii° vi vii° IV",
                "BenLeon / iii ii ii iii I V I V",
                "BenLeon / iii iii vii° I I vi V vi",
                "BenLeon / vi IV V IV vii° I iii vii°",
                "BenLeon / vi V ii IV vii° I vi vi",
                "BenLeon / vi iii vi iii iii vii° iii iii",
                "BenLeon / vi vi iii IV vii° vii° IV vi",
                "BenLeon / vi vii° IV ii ii vi ii IV",
                "BenLeon / vi vii° vi ii V I iii ii",
                "BenLeon / vii° V vi ii ii vi IV vi",
                "BenLeon / vii° ii iii vii° ii iii vi vii°",
                "BenLeon / vii° iii ii IV iii vii° vii° V",
                "BenLeon / vii° iii ii vi IV vi vii° V",
                "BenLeon / vii° iii vii° vi I iii iii vi",
                "BenLeon / IV V vi vii° IV iii vi V",
                "BenLeon / IV V vii° iii iii iii vi V",
                "BenLeon / IV ii vii° V vii° V vii° vii°",
                "BenLeon / IV iii V ii ii vi vii° iii",
                "BenLeon / I ii iii vii° ii V vi I",
                "BenLeon / I vi vii° vii° ii vi vii° vi",
                "BenLeon / I vii° ii IV V IV I vi",
                "BenLeon / V IV ii I V I iii iii",
                "BenLeon / V I iii I IV IV vi iii",
                "BenLeon / V vi IV vi IV vii° IV vi",
                "BenLeon / V vii° I vii° vi vii° I I",
                "BenLeon / ii IV IV I I ii V vi",
                "BenLeon / ii ii IV iii ii IV ii V",
                "BenLeon / iii IV I I vii° IV iii IV",
                "BenLeon / iii vi I I ii iii ii V",
                "BenLeon / vi vi ii IV V vii° iii I",
                "BenLeon / vi vii° V vii° vi IV IV vi",
                "BenLeon / vii° IV vi iii iii vi vi V",
                "BenLeon / vii° I IV iii vii° I V I",
                "BenLeon / vii° ii V vii° vii° iii iii V",
                "BenLeon / IV IV I IV I I iii vii°",
                "BenLeon / IV I I iii I V iii ii",
                "BenLeon / IV V iii vii° V IV vi vi",
                "BenLeon / I I ii IV iii V vii° IV",
                "BenLeon / I iii vi V vii° vii° iii V",
                "BenLeon / I iii vii° vi IV I IV ii",
                "BenLeon / V IV ii V ii iii IV IV",
                "BenLeon / V IV vi V IV vii° ii vii°",
                "BenLeon / V IV vi vii° vii° V V iii",
                "BenLeon / V V IV ii vii° I ii vii°",
                "BenLeon / V ii ii vii° iii ii iii V",
                "BenLeon / V ii vi iii vii° vi I vi",
                "BenLeon / ii IV I IV V vii° vii° vii°",
                "BenLeon / ii IV vii° IV V ii V V",
                "BenLeon / ii I IV ii vi ii iii iii",
                "BenLeon / ii V iii iii I vi iii iii",
                "BenLeon / ii V vii° vi iii ii V iii",
                "BenLeon / iii vi vi V I ii V I",
                "BenLeon / vi V IV vi vii° vii° iii vii°",
                "BenLeon / vi ii I vii° IV ii I vi",
                "BenLeon / vi iii vi vii° ii IV ii V",
                "BenLeon / vi vi IV I vii° iii V vii°",
                "BenLeon / vi vi vi ii vii° vii° V I",
                "BenLeon / vii° IV IV vi IV iii vi vi",
                "BenLeon / vii° IV iii iii vii° vii° iii I",
                "BenLeon / vii° ii IV iii vi vii° iii ii",
                "BenLeon / vii° ii V iii iii I ii vi",
                "BenLeon / vii° vi IV I ii iii V IV",
                "BenLeon / vii° vi iii vi vi vii° IV V",
                "BenLeon / IV I V iii ii vii° ii iii",
                "BenLeon / IV I vi iii ii iii I V",
                "BenLeon / I IV iii vi I V ii vii°",
                "BenLeon / I I IV IV iii V I I",
                "BenLeon / I V IV vi vii° iii iii V",
                "BenLeon / I V iii IV ii IV vi vi",
                "BenLeon / I ii V vii° iii vii° I vii°",
                "BenLeon / I vi IV ii V I iii iii",
                "BenLeon / V IV vii° vii° vi iii vii° ii",
                "BenLeon / V V IV I IV IV vii° vii°",
                "BenLeon / V ii I iii V vii° vi ii",
                "BenLeon / V ii I iii vi vi ii iii",
                "BenLeon / V ii vi I V ii ii vi",
                "BenLeon / V iii vii° I vii° I vii° iii",
                "BenLeon / V iii vii° V IV vi iii V",
                "BenLeon / ii V iii I iii I I iii",
                "BenLeon / iii IV ii IV V iii iii vi",
                "BenLeon / iii ii I V iii vii° I V",
                "BenLeon / iii vi vii° iii I IV IV vii°",
                "BenLeon / vii° ii V V iii vi IV IV",
                "BenLeon / III III VI i v VI ii° i",
                "BenLeon / III VII ii° ii° v ii° VII v",
                "BenLeon / III ii° ii° v iv v i i",
                "BenLeon / III iv ii° VII v ii° VI iv",
                "BenLeon / VII III VI ii° i iv iv VII",
                "BenLeon / VII VII iv ii° VII v III v",
                "BenLeon / VII v VII III VI v iv v",
                "BenLeon / VI III iv III ii° III VI v",
                "BenLeon / VI VI VII VII III v v III",
                "BenLeon / VI i ii° VI ii° v VI VI",
                "BenLeon / VI ii° i VI iv VI III VII",
                "BenLeon / VI ii° ii° i v III VI III",
                "BenLeon / VI v i ii° VII VI iv v",
                "BenLeon / i iv VI VII III ii° iv v",
                "BenLeon / ii° ii° III ii° ii° i VII III",
                "BenLeon / iv i ii° iv i VII VII VI",
                "BenLeon / iv ii° VII VII VI VII iv i",
                "BenLeon / iv v III v i iv i VII",
                "BenLeon / v VII i v VII ii° III VI",
                "BenLeon / v i VII ii° v ii° ii° v",
                "BenLeon / IV V iii vi iii iii I ii",
                "BenLeon / IV V vii° vi vi vi vi ii",
                "BenLeon / IV vi I I V IV vii° IV",
                "BenLeon / IV vi iii V IV ii V vii°",
                "BenLeon / IV vii° V vii° I vii° iii vi",
                "BenLeon / I IV vii° vii° iii vi vi iii",
                "BenLeon / I V IV IV V ii V vi",
                "BenLeon / V vi I I iii ii vi vi",
                "BenLeon / V vii° V vii° V iii iii iii",
                "BenLeon / ii ii vii° vi V ii IV V",
                "BenLeon / ii vi ii vii° iii ii ii V",
                "BenLeon / iii vi vi I iii vi IV V",
                "BenLeon / vi I IV ii vi I IV vi",
                "BenLeon / vi ii V vi iii iii iii vii°",
                "BenLeon / vi ii ii iii I I I I",
                "BenLeon / vi ii iii ii iii V V vi",
                "BenLeon / vii° IV vii° I vii° ii vii° vi",
                "BenLeon / vii° ii vii° ii vii° IV V I",
                "BenLeon / vii° vi iii ii iii vii° iii IV",
                "BenLeon / vii° vii° ii vi iii vii° vi I",
                "BenLeon / IV V ii vi I V vii° ii",
                "BenLeon / IV vi I I vii° V vi ii",
                "BenLeon / IV vii° V iii vii° ii vi I",
                "BenLeon / I ii V I vii° iii V V",
                "BenLeon / I iii IV V IV V IV V",
                "BenLeon / I iii vii° V ii I ii vii°",
                "BenLeon / V V V V V V IV IV",
                "BenLeon / V iii IV IV V ii I ii",
                "BenLeon / ii IV ii vii° iii IV I vii°",
                "BenLeon / ii V V ii ii iii vii° I",
                "BenLeon / iii IV V vii° I IV IV ii",
                "BenLeon / iii I iii IV vi vi ii IV",
                "BenLeon / iii I vi IV I I I vi",
                "BenLeon / iii ii iii iii ii vi V V",
                "BenLeon / iii iii I IV IV V V vii°",
                "BenLeon / iii vi vi V ii IV V V",
                "BenLeon / iii vii° V vii° I V ii ii",
                "BenLeon / vi V V iii vi V vi vi",
                "BenLeon / vi vii° vii° iii V vi IV vii°",
                "BenLeon / vii° vii° IV V vi IV I vii°",
                "BenLeon / III III VII ii° iv v VI iv",
                "BenLeon / III VI v III i III v v",
                "BenLeon / III v v iv v III iv ii°",
                "BenLeon / VII III VI VII i III v ii°",
                "BenLeon / VII VI VII ii° VII VI III iv",
                "BenLeon / VI III i ii° VI i ii° III",
                "BenLeon / VI VII VI VII v III i VI",
                "BenLeon / i i v III VI i VI v",
                "BenLeon / i iv III iv ii° III iv III",
                "BenLeon / i v iv i ii° iv III III",
                "BenLeon / ii° III iv v ii° iv ii° v",
                "BenLeon / ii° VI III v III v iv i",
                "BenLeon / ii° iv III ii° v III ii° i",
                "BenLeon / ii° iv VII v VII i iv ii°",
                "BenLeon / iv III III III iv VI III VI",
                "BenLeon / iv VI iv ii° VI v VI ii°",
                "BenLeon / iv v III v i ii° iv iv",
                "BenLeon / v III iv VII VII III VI iv",
                "BenLeon / v III iv i i VII III VI",
                "BenLeon / v v v III III VI i VII",
                "BenLeon / III III iv iv III iv ii° VI",
                "BenLeon / VII i iv ii° ii° VI VI iv",
                "BenLeon / VII ii° i iv iv i v III",
                "BenLeon / VII ii° ii° iv VI VI VI ii°",
                "BenLeon / VI VII VI ii° v VI VI III",
                "BenLeon / VI v i iv III v VII VII",
                "BenLeon / VI v ii° VII III v VII III",
                "BenLeon / VI v iv iv i iv VI ii°",
                "BenLeon / i i iv v VII v i iv",
                "BenLeon / i iv i v VI VI ii° VII",
                "BenLeon / ii° VI ii° III ii° iv III III",
                "BenLeon / ii° iv VII VII VII iv v III",
                "BenLeon / ii° v VI i VI ii° VII i",
                "BenLeon / iv VI VII i ii° VI iv VII",
                "BenLeon / iv VI VI v III ii° i i",
                "BenLeon / iv i VII ii° VII v i ii°",
                "BenLeon / iv i VI VI i VI III ii°",
                "BenLeon / v III ii° iv iv iv v VII",
                "BenLeon / v III iv v ii° III ii° VII",
                "BenLeon / v ii° iv i VII VII VII III",
                "BenLeon / IV IV IV V IV V IV vi",
                "BenLeon / IV I iii V iii ii vi IV",
                "BenLeon / IV ii vii° IV iii IV ii vi",
                "BenLeon / IV iii ii ii V vii° vii° I",
                "BenLeon / IV vi IV ii iii ii V vii°",
                "BenLeon / IV vii° ii I V vi vi iii",
                "BenLeon / I IV IV IV I ii vi ii",
                "BenLeon / I vii° V iii vi IV ii vii°",
                "BenLeon / V I iii I vii° iii I ii",
                "BenLeon / V V V V ii vii° V V",
                "BenLeon / V vii° vii° IV ii V iii vii°",
                "BenLeon / ii ii I vii° ii vii° ii iii",
                "BenLeon / ii ii iii I I vi ii V",
                "BenLeon / ii vi vii° vi IV vi iii IV",
                "BenLeon / iii I IV vi iii I IV iii",
                "BenLeon / iii iii iii vi iii V vii° IV",
                "BenLeon / iii iii vii° V vi I IV vii°",
                "BenLeon / vii° IV vii° V I V V vii°",
                "BenLeon / vii° V vii° V V vii° IV vii°",
                "BenLeon / vii° ii V V ii IV IV ii",
                "BenLeon / IV I IV I ii ii I iii",
                "BenLeon / IV I vi vi V vii° vii° ii",
                "BenLeon / IV vi iii V vii° vi ii V",
                "BenLeon / I IV vi vii° vii° IV vi V",
                "BenLeon / I IV vii° vi V vii° ii iii",
                "BenLeon / I I I V vi vii° ii vii°",
                "BenLeon / I V vii° vi I I I I",
                "BenLeon / I iii vii° V vi V iii V",
                "BenLeon / I vii° V iii ii V vii° IV",
                "BenLeon / V IV I IV vi ii IV ii",
                "BenLeon / V IV V ii vii° I ii IV",
                "BenLeon / V vi vi vii° vi IV vii° ii",
                "BenLeon / ii I vi iii I IV V IV",
                "BenLeon / ii V I I vi I vii° I",
                "BenLeon / ii ii I vi IV IV V vi",
                "BenLeon / iii V V V vii° vii° I ii",
                "BenLeon / iii V vi vi V vii° I vii°",
                "BenLeon / vi I I IV ii V vii° V",
                "BenLeon / vii° ii IV vii° iii iii I I",
                "BenLeon / vii° vii° vii° iii V iii IV ii",
                "BenLeon / I I vii° iii iii vi iii IV",
                "BenLeon / I iii IV vii° IV iii ii vii°",
                "BenLeon / V I V vii° IV vii° iii iii",
                "BenLeon / V V V ii vii° I vii° V",
                "BenLeon / V ii IV ii vi V ii iii",
                "BenLeon / V ii vi vi ii V iii I",
                "BenLeon / V iii V vii° ii V IV ii",
                "BenLeon / V vii° IV V vii° vii° V ii",
                "BenLeon / ii I I IV iii vii° IV vii°",
                "BenLeon / iii IV I vii° IV vii° ii vi",
                "BenLeon / iii iii vii° V I iii iii iii",
                "BenLeon / iii vi I ii iii iii vi IV",
                "BenLeon / vi I ii IV iii vi I IV",
                "BenLeon / vi V V vi iii vi iii ii",
                "BenLeon / vii° IV I IV IV IV iii iii",
                "BenLeon / vii° V I IV IV vi V iii",
                "BenLeon / vii° V vi vii° V I V vi",
                "BenLeon / vii° ii vii° I vii° I iii I",
                "BenLeon / vii° iii iii ii iii vii° vi IV",
                "BenLeon / vii° vii° vi vi iii iii ii V",
                "BenLeon / IV vi IV V vi iii ii vii°",
                "BenLeon / I IV iii IV ii vii° vi IV",
                "BenLeon / I IV vi IV ii vi vi iii",
                "BenLeon / I V vi V V vi vii° iii",
                "BenLeon / I vi I I vii° vii° I I",
                "BenLeon / V iii vi vi vii° V vi ii",
                "BenLeon / V vii° vi vii° vi I V V",
                "BenLeon / ii IV I I IV vii° iii iii",
                "BenLeon / ii IV iii vii° iii vi vi V",
                "BenLeon / ii I V vi I ii vi ii",
                "BenLeon / ii V IV iii V V ii iii",
                "BenLeon / ii vi IV IV ii vii° vi I",
                "BenLeon / ii vii° IV vi I IV I iii",
                "BenLeon / iii V vi vii° V V vii° ii",
                "BenLeon / vi IV vii° ii V vii° ii vi",
                "BenLeon / vi I V vii° vii° vi I vii°",
                "BenLeon / vi V I ii ii IV V ii",
                "BenLeon / vi vi vii° I vii° IV V iii",
                "BenLeon / vi vii° iii V V IV V ii",
                "BenLeon / vii° IV I ii ii V V IV",
                "BenLeon / IV IV IV IV ii IV iii vii°",
                "BenLeon / IV vi iii vii° ii V iii IV",
                "BenLeon / I I I V vii° vii° V ii",
                "BenLeon / I I vi ii ii IV ii V",
                "BenLeon / I V IV IV vi V iii I",
                "BenLeon / I ii ii ii I vii° IV vii°",
                "BenLeon / I vi vi vii° vi I iii vi",
                "BenLeon / I vii° V I vi V ii vi",
                "BenLeon / V IV vii° ii vii° I vii° ii",
                "BenLeon / V vi IV vi ii vii° iii IV",
                "BenLeon / ii V vi iii V iii ii vi",
                "BenLeon / vi IV IV iii vii° V I IV",
                "BenLeon / vi ii V ii I vi I IV",
                "BenLeon / vi iii IV IV IV vii° I vii°",
                "BenLeon / vi vii° I vii° vii° ii IV iii",
                "BenLeon / vi vii° vi I IV vi V vii°",
                "BenLeon / vii° IV I V V IV IV ii",
                "BenLeon / vii° IV vi iii ii I V vii°",
                "BenLeon / vii° V ii ii I I vii° vii°",
                "BenLeon / vii° vii° vi IV IV ii V ii",
                "BenLeon / III iv VII v i i VII VI",
                "BenLeon / VII i v v iv III i VI",
                "BenLeon / VII iv ii° III iv iv v i",
                "BenLeon / VII iv ii° VI i ii° iv VI",
                "BenLeon / VI VI i i iv iv i III",
                "BenLeon / VI i III iv VII v v III",
                "BenLeon / i III VII v VII III iv ii°",
                "BenLeon / i VII VI iv iv III v VII",
                "BenLeon / i i ii° v v VII iv v",
                "BenLeon / i ii° iv VII III III VII III",
                "BenLeon / i v VI VI iv i i i",
                "BenLeon / ii° iv i v VII VII III iv",
                "BenLeon / iv VII i ii° III i i VII",
                "BenLeon / iv VI iv VI III v VII v",
                "BenLeon / iv VI v i iv i iv i",
                "BenLeon / iv i iv III v iv v i",
                "BenLeon / iv ii° III III VI VII III ii°",
                "BenLeon / v VII VII i v III III VI",
                "BenLeon / v ii° i i III III III iv",
                "BenLeon / v iv v iv VI III III iv",
                "BenLeon / IV V V iii iii I vi ii",
                "BenLeon / IV ii vii° I IV V vii° V",
                "BenLeon / IV iii ii vi iii ii ii vii°",
                "BenLeon / I I I vii° iii vii° ii V",
                "BenLeon / ii I V I vi iii I IV",
                "BenLeon / ii V IV ii vii° I V V",
                "BenLeon / ii V vi iii iii iii iii V",
                "BenLeon / ii ii V vi I I iii vii°",
                "BenLeon / ii iii I vi iii vi iii vi",
                "BenLeon / ii vi IV IV I IV vi vii°",
                "BenLeon / iii I I I I vi IV vi",
                "BenLeon / iii iii V ii iii I IV vi",
                "BenLeon / iii vi V iii iii vi ii vii°",
                "BenLeon / vi V iii I ii IV vi iii",
                "BenLeon / vi ii iii I vii° ii ii vii°",
                "BenLeon / vi iii I V vi iii ii ii",
                "BenLeon / vi iii ii IV iii V ii ii",
                "BenLeon / vii° V IV iii V IV vi IV",
                "BenLeon / vii° iii I iii V ii iii vii°",
                "BenLeon / vii° iii V ii iii IV vii° I",
                "BenLeon / IV iii vii° ii vii° V IV iii",
                "BenLeon / IV vi ii V IV vii° vi I",
                "BenLeon / IV vi vi V I iii vii° V",
                "BenLeon / IV vi vii° IV vii° V V V",
                "BenLeon / IV vii° iii ii I vi vi iii",
                "BenLeon / IV vii° vii° vii° vi vii° ii iii",
                "BenLeon / I ii iii vii° ii vii° vi I",
                "BenLeon / V vi I vii° iii I iii iii",
                "BenLeon / V vii° vi iii I V iii I",
                "BenLeon / ii IV I vi vii° iii ii IV",
                "BenLeon / ii I vii° V vi vii° I vi",
                "BenLeon / ii iii IV IV V I V vii°",
                "BenLeon / iii ii IV vi ii iii iii vii°",
                "BenLeon / iii iii vii° I vi vii° vi vi",
                "BenLeon / vi V ii vi IV iii I ii",
                "BenLeon / vii° IV vi iii I I IV iii",
                "BenLeon / vii° I I iii V ii V IV",
                "BenLeon / vii° I vii° vii° vii° vi V I",
                "BenLeon / vii° V IV vii° I ii V V",
                "BenLeon / vii° vi vi V vi IV vii° I",
                "BenLeon / III VII iv iv i iv III i",
                "BenLeon / III v VI III iv iv VI ii°",
                "BenLeon / VII i v i VI iv III VII",
                "BenLeon / VI VII VI v v v VII VII",
                "BenLeon / VI VI VI v iv III iv v",
                "BenLeon / VI i v VI VII i iv iv",
                "BenLeon / i III III ii° v III III III",
                "BenLeon / i VII VI i iv iv ii° v",
                "BenLeon / i VI i III v iv III III",
                "BenLeon / i i i i ii° v VII iv",
                "BenLeon / i ii° i i i i i v",
                "BenLeon / ii° ii° III ii° VI VII i iv",
                "BenLeon / ii° iv iv v ii° ii° ii° ii°",
                "BenLeon / ii° v VII VII iv iv iv III",
                "BenLeon / ii° v iv iv ii° ii° VI v",
                "BenLeon / iv iv i ii° iv iv VII v",
                "BenLeon / iv v VI iv III III v v",
                "BenLeon / v III ii° iv VI III VI i",
                "BenLeon / v VII iv III i v VII v",
                "BenLeon / v ii° VI VII ii° III III i",
                "BenLeon / III VII III iv ii° ii° iv i",
                "BenLeon / III i III ii° VI v v VII",
                "BenLeon / VII III VII III ii° VI III i",
                "BenLeon / VII VII ii° i v i III VII",
                "BenLeon / VII VI i III v v VII i",
                "BenLeon / VII iv i III iv VI VII i",
                "BenLeon / VII v iv i III i VI v",
                "BenLeon / VI III VII VII III III VI VI",
                "BenLeon / VI i i i VI III VI v",
                "BenLeon / VI v v i VII iv VII VII",
                "BenLeon / i III VII i iv VI ii° ii°",
                "BenLeon / i VII VII VI VII VII VI ii°",
                "BenLeon / i VII iv ii° ii° VII iv i",
                "BenLeon / i VI v VI VI v iv iv",
                "BenLeon / ii° ii° ii° ii° III VII III III",
                "BenLeon / iv VI III VI i III VI ii°",
                "BenLeon / v III iv iv ii° VII III ii°",
                "BenLeon / v ii° ii° i VI i VI ii°",
                "BenLeon / v iv VI ii° i iv v v",
                "BenLeon / v iv ii° ii° iv v v III",
                "BenLeon / IV V vi vii° iii ii ii V",
                "BenLeon / IV iii IV iii ii V vi vii°",
                "BenLeon / IV vi iii V ii ii ii ii",
                "BenLeon / I IV vii° I I vii° V ii",
                "BenLeon / I I iii I vi vii° ii ii",
                "BenLeon / I V vi vii° V ii V ii",
                "BenLeon / I vi vi iii vii° I IV ii",
                "BenLeon / V IV IV vi ii ii IV vii°",
                "BenLeon / ii ii IV iii V I ii ii",
                "BenLeon / ii vii° V ii I ii IV vi",
                "BenLeon / ii vii° V vii° vi iii vii° iii",
                "BenLeon / iii V ii IV I iii iii ii",
                "BenLeon / iii vi IV vi V vii° vi I",
                "BenLeon / vi vii° vii° V ii ii V IV",
                "BenLeon / vii° IV vii° vii° I iii V I",
                "BenLeon / vii° I vi vi vii° ii I ii",
                "BenLeon / vii° I vii° IV IV vi iii I",
                "BenLeon / vii° V vii° vii° vii° I I V",
                "BenLeon / vii° iii I iii vii° ii iii iii",
                "BenLeon / vii° vi iii iii IV V vi vi",
                "BenLeon / IV I V ii I vi ii vii°",
                "BenLeon / IV iii V vi vi IV iii I",
                "BenLeon / I ii iii vii° ii ii I V",
                "BenLeon / V I vi ii V vii° V IV",
                "BenLeon / V ii V I ii V ii ii",
                "BenLeon / V ii vi ii ii ii IV iii",
                "BenLeon / V vi vii° I ii vi I I",
                "BenLeon / ii IV IV V vii° vi IV iii",
                "BenLeon / ii V vi vi iii V IV iii",
                "BenLeon / ii ii vi V IV IV vii° ii",
                "BenLeon / ii vii° V I vii° I IV I",
                "BenLeon / iii IV I IV V I I iii",
                "BenLeon / iii IV ii I V IV vi vi",
                "BenLeon / iii V ii IV I IV I vii°",
                "BenLeon / iii vi vi iii vii° I vii° V",
                "BenLeon / vi IV IV I vii° IV vii° vii°",
                "BenLeon / vi vii° ii ii vi I vii° V",
                "BenLeon / vii° I IV IV vi vi V I",
                "BenLeon / vii° ii vii° I ii V V I",
                "BenLeon / vii° vii° ii vii° iii vii° vi ii",
                "BenLeon / IV V iii vi vii° vii° IV vii°",
                "BenLeon / I I ii I V vii° iii ii",
                "BenLeon / I ii IV iii vii° vi vii° iii",
                "BenLeon / I vi V vi iii V V I",
                "BenLeon / V ii I vi I iii IV iii",
                "BenLeon / V iii V V I iii IV IV",
                "BenLeon / V iii iii vii° vii° I vi iii",
                "BenLeon / V vi I vii° vii° ii V IV",
                "BenLeon / ii IV ii ii vii° iii V iii",
                "BenLeon / ii V IV I IV vii° V V",
                "BenLeon / ii V ii V iii I vii° V",
                "BenLeon / ii iii V V I IV vi ii",
                "BenLeon / ii vi I IV iii IV vi ii",
                "BenLeon / iii ii vii° IV vii° ii ii vii°",
                "BenLeon / vi V ii iii vii° vii° vi vii°",
                "BenLeon / vi vi vi IV vi vii° I IV",
                "BenLeon / vi vii° vii° I vi ii V IV",
                "BenLeon / vii° V ii vii° ii iii V ii",
                "BenLeon / vii° ii vi iii vii° V vii° vi",
                "BenLeon / vii° vi IV V V V vi ii",
                "BenLeon / IV I ii iii V V IV vii°",
                "BenLeon / IV iii ii IV V I V V",
                "BenLeon / IV vi vi V I I V V",
                "BenLeon / IV vi vii° vi vii° vi vi I",
                "BenLeon / I IV I vii° V IV ii vii°",
                "BenLeon / ii I vi I vii° V I vii°",
                "BenLeon / ii ii iii I vii° ii ii vii°",
                "BenLeon / ii vi IV vii° vii° I vi IV",
                "BenLeon / iii I V vi iii IV iii V",
                "BenLeon / iii V I V vii° vii° I I",
                "BenLeon / iii iii iii iii vii° IV I I",
                "BenLeon / iii vi V iii ii V vii° ii",
                "BenLeon / vi IV IV I I ii ii ii",
                "BenLeon / vi IV I IV ii vii° ii IV",
                "BenLeon / vi IV ii IV iii vii° vii° vii°",
                "BenLeon / vi iii iii IV V vii° V ii",
                "BenLeon / vi vii° I vi vi V vii° iii",
                "BenLeon / vi vii° vi ii V vii° vi ii",
                "BenLeon / vii° V iii iii IV iii IV IV",
                "BenLeon / vii° iii vi vii° V V ii ii",
                "BenLeon / IV V vii° vi ii IV ii vii°",
                "BenLeon / IV vii° ii ii I vi vii° iii",
                "BenLeon / I IV vi iii vii° IV IV vi",
                "BenLeon / I vi V I vi ii iii V",
                "BenLeon / I vi vii° ii V vii° I iii",
                "BenLeon / V I ii I iii V iii I",
                "BenLeon / V vii° V vii° I IV vii° iii",
                "BenLeon / ii ii vi vi ii I vii° I",
                "BenLeon / ii vii° I I V IV ii I",
                "BenLeon / ii vii° vii° ii I iii vii° V",
                "BenLeon / iii IV V vii° iii vi ii vii°",
                "BenLeon / iii IV ii vii° vii° iii IV I",
                "BenLeon / iii V vii° V vii° V I IV",
                "BenLeon / iii iii vii° vii° iii V ii vi",
                "BenLeon / vi ii I vi vi V vi IV",
                "BenLeon / vi iii V IV I ii I iii",
                "BenLeon / vii° IV V IV ii IV iii I",
                "BenLeon / vii° I vi I IV vi vi ii",
                "BenLeon / vii° I vi ii iii iii V IV",
                "BenLeon / vii° V I I vii° V vii° V",
                "BenLeon / III VII VII v III VI III ii°",
                "BenLeon / VII VII v III i iv i ii°",
                "BenLeon / VII VI i VII VII VII iv i",
                "BenLeon / VII iv ii° i ii° i ii° iv",
                "BenLeon / VI III VI v iv VI iv ii°",
                "BenLeon / VI VII i VII v VII ii° III",
                "BenLeon / VI ii° VII VI VI VI i VI",
                "BenLeon / VI v VII VI III III III ii°",
                "BenLeon / i i ii° ii° VII v VII iv",
                "BenLeon / i iv III i III VII VII v",
                "BenLeon / i iv VI i VI v III VI",
                "BenLeon / ii° III VI III VI i VI III",
                "BenLeon / ii° VI VII v VII ii° ii° VII",
                "BenLeon / ii° ii° VII VI III iv i ii°",
                "BenLeon / ii° iv VI v VII III VII iv",
                "BenLeon / ii° v III VI VI VI iv VII",
                "BenLeon / iv III v ii° v VII v iv",
                "BenLeon / iv i VI iv i v iv III",
                "BenLeon / v VI III iv ii° III ii° III",
                "BenLeon / v i VII iv VI ii° III VI",
                "BenLeon / IV ii vii° I I I vii° iii",
                "BenLeon / I V I iii V ii IV IV",
                "BenLeon / I ii V IV iii IV I vi",
                "BenLeon / I vii° iii vi IV vii° I iii",
                "BenLeon / V IV iii I vi vii° I ii",
                "BenLeon / V V ii iii vii° vii° ii I",
                "BenLeon / V ii vi vii° I IV vii° iii",
                "BenLeon / V iii V ii vi iii IV iii",
                "BenLeon / ii I vii° vii° ii iii iii IV",
                "BenLeon / ii iii I iii vi V vii° ii",
                "BenLeon / ii iii ii vii° iii V iii V",
                "BenLeon / iii V I ii ii vii° I I",
                "BenLeon / iii V iii IV I vi vii° vii°",
                "BenLeon / iii ii I vi V V iii IV",
                "BenLeon / iii iii vi IV iii iii iii I",
                "BenLeon / iii vii° vii° I vi I I iii",
                "BenLeon / vi IV vii° I I vi V I",
                "BenLeon / vii° I IV ii iii iii iii iii",
                "BenLeon / vii° iii ii ii iii ii iii I",
                "BenLeon / vii° vii° IV iii IV ii ii vi",
                "BenLeon / IV IV iii IV vi I I iii",
                "BenLeon / IV I I IV IV vii° vii° iii",
                "BenLeon / I IV V V ii IV ii iii",
                "BenLeon / I V IV iii IV IV iii vi",
                "BenLeon / I ii iii V IV V iii I",
                "BenLeon / I ii iii iii IV vi iii I",
                "BenLeon / I iii V V iii vii° I iii",
                "BenLeon / I iii ii vii° iii ii vii° I",
                "BenLeon / I vi vi ii iii V vi IV",
                "BenLeon / V I V ii vi vii° vii° iii",
                "BenLeon / V vii° I vi I iii IV vii°",
                "BenLeon / ii iii V V iii I I I",
                "BenLeon / ii iii vii° V vii° ii IV I",
                "BenLeon / vi IV V V ii ii ii V",
                "BenLeon / vi iii iii ii I vi ii vii°",
                "BenLeon / vi vi V vii° vi I ii vii°",
                "BenLeon / vi vi ii iii vi iii iii iii",
                "BenLeon / vii° V I IV I IV V V",
                "BenLeon / vii° vi ii I iii IV iii vii°",
                "BenLeon / vii° vi vi IV vi vii° V vi",
                "BenLeon / III i III i iv v iv iv",
                "BenLeon / III i ii° VII i VI VI VI",
                "BenLeon / III ii° ii° v i iv ii° i",
                "BenLeon / III ii° v i VI v III III",
                "BenLeon / III iv VII i VI VI VI iv",
                "BenLeon / III v VII iv III VI iv ii°",
                "BenLeon / III v i v ii° VII iv VII",
                "BenLeon / III v v VII ii° v VI v",
                "BenLeon / VII VI v VII VI VII VII iv",
                "BenLeon / VII v v VII VI iv iv III",
                "BenLeon / VI VII iv VII VII v ii° III",
                "BenLeon / VI i VII i VI VI i v",
                "BenLeon / VI iv III III iv iv III III",
                "BenLeon / VI iv III VII iv VII v VI",
                "BenLeon / ii° v VII ii° III iv iv v",
                "BenLeon / v VII VI i i VI III iv",
                "BenLeon / v VI ii° iv III v VII VII",
                "BenLeon / v VI iv ii° ii° VI VI VII",
                "BenLeon / v ii° iv i ii° VI III v",
                "BenLeon / v v i v iv ii° iv VI",
                "BenLeon / III iv III v ii° VII III iv",
                "BenLeon / VII III iv VI VI i ii° ii°",
                "BenLeon / VII VI iv III iv VI ii° ii°",
                "BenLeon / VII i ii° III III III VII ii°",
                "BenLeon / VII v VII III VI v VII v",
                "BenLeon / VII v VII i VII III VII ii°",
                "BenLeon / VI ii° v i VII III VI ii°",
                "BenLeon / VI iv VII III VII i v i",
                "BenLeon / VI v i iv ii° III VI i",
                "BenLeon / i VII i i v iv ii° III",
                "BenLeon / i VII iv VI iv v iv ii°",
                "BenLeon / i i III III v iv ii° iv",
                "BenLeon / i ii° VII ii° v ii° ii° III",
                "BenLeon / i iv VI ii° iv VI III ii°",
                "BenLeon / i v i VII iv v v v",
                "BenLeon / ii° iv iv VI iv VI VII iv",
                "BenLeon / iv VI III VII VI VII i VI",
                "BenLeon / v VII ii° III ii° ii° iv VI",
                "BenLeon / v iv ii° v VI III III i",
                "BenLeon / v v v iv VI III iv III",
                "BenLeon / IV V V vii° iii vi ii vi",
                "BenLeon / IV V vi iii V ii IV IV",
                "BenLeon / IV V vii° IV I I IV iii",
                "BenLeon / IV iii vi iii V I vii° V",
                "BenLeon / IV iii vi vii° IV vii° IV vii°",
                "BenLeon / I I ii ii vi vii° V V",
                "BenLeon / I V vii° ii ii vi V iii",
                "BenLeon / I vi V ii vii° V vii° I",
                "BenLeon / ii IV vii° I vii° IV ii V",
                "BenLeon / ii V ii ii vi vii° I IV",
                "BenLeon / ii vii° V I ii vi iii V",
                "BenLeon / iii IV vi I V iii ii ii",
                "BenLeon / iii ii vii° ii ii V ii vii°",
                "BenLeon / vi I I vi I iii vi IV",
                "BenLeon / vi I V ii vi V I I",
                "BenLeon / vi V ii vii° vi IV I iii",
                "BenLeon / vi vi IV iii ii I I IV",
                "BenLeon / vi vii° V IV vi iii iii vi",
                "BenLeon / vii° IV V IV I iii I ii",
                "BenLeon / vii° vii° iii vi vi vii° ii iii",
                "BenLeon / IV V IV vi IV I V IV",
                "BenLeon / IV V iii IV iii I ii V",
                "BenLeon / IV iii I IV ii vii° vii° IV",
                "BenLeon / IV iii iii IV vii° IV V I",
                "BenLeon / IV vi vi ii vii° IV vii° I",
                "BenLeon / IV vii° iii IV ii vii° iii vi",
                "BenLeon / I I I ii V V vii° iii",
                "BenLeon / I V V ii I V I ii",
                "BenLeon / I vii° ii vii° IV ii vii° I",
                "BenLeon / ii I IV V vi vi IV iii",
                "BenLeon / ii I ii ii IV vi iii IV",
                "BenLeon / ii V V ii V I V IV",
                "BenLeon / ii V vi I ii V vii° IV",
                "BenLeon / iii vi I iii vi V iii vi",
                "BenLeon / iii vi vi ii vi iii ii IV",
                "BenLeon / vi IV iii ii IV IV IV ii",
                "BenLeon / vi I vii° vii° vii° vii° V I",
                "BenLeon / vi vi vii° iii V V IV I",
                "BenLeon / vii° I IV IV IV I iii IV",
                "BenLeon / vii° V V vi vi IV iii vi",
                "BenLeon / IV IV vii° IV V I IV vi",
                "BenLeon / I vi V iii ii I V V",
                "BenLeon / V IV ii V iii I V iii",
                "BenLeon / V IV vii° vii° ii vi V I",
                "BenLeon / V I IV vi ii vi vii° V",
                "BenLeon / V I V vii° vi vi vii° V",
                "BenLeon / ii I vii° IV IV vi V vi",
                "BenLeon / ii vii° IV I iii IV I V",
                "BenLeon / iii V I I I I ii V",
                "BenLeon / iii ii iii vi I vi vi vi",
                "BenLeon / iii iii IV vi vi iii vi I",
                "BenLeon / vi ii V I iii vi ii vii°",
                "BenLeon / vi vi IV vi iii vii° ii ii",
                "BenLeon / vi vi ii iii V iii ii iii",
                "BenLeon / vi vi ii vii° V IV vi vii°",
                "BenLeon / vi vii° vi I V vii° V vi",
                "BenLeon / vii° iii vii° vi ii V V vii°",
                "BenLeon / vii° vi iii V IV V vii° iii",
                "BenLeon / vii° vii° ii IV vii° V V ii",
                "BenLeon / vii° vii° vii° IV IV V I iii",
                "BenLeon / IV IV vii° I IV vii° I IV",
                "BenLeon / IV IV vii° ii ii IV I vi",
                "BenLeon / IV iii vii° ii V V vi iii",
                "BenLeon / IV iii vii° iii V vi vi IV",
                "BenLeon / IV vi IV vi vii° V iii I",
                "BenLeon / IV vii° ii iii iii I vii° ii",
                "BenLeon / I ii vii° ii V vii° iii ii",
                "BenLeon / V V iii IV IV I V IV",
                "BenLeon / V V vii° IV vi I V IV",
                "BenLeon / V iii ii vii° iii IV IV V",
                "BenLeon / ii vii° V ii IV ii I vii°",
                "BenLeon / iii IV IV vii° V vii° vi V",
                "BenLeon / iii IV iii V I I vii° IV",
                "BenLeon / iii V I IV vii° vi V ii",
                "BenLeon / iii iii vii° vii° vii° IV IV V",
                "BenLeon / iii vi iii vii° ii IV iii vii°",
                "BenLeon / vi IV IV IV vii° vi ii vi",
                "BenLeon / vii° iii V vi ii IV vi I",
                "BenLeon / vii° iii iii V I vii° vii° V",
                "BenLeon / vii° vi ii V vi iii vi vii°",
                "BenLeon / IV IV IV I iii vii° vi ii",
                "BenLeon / IV I V IV IV IV vii° vi",
                "BenLeon / IV V iii vii° IV iii V ii",
                "BenLeon / IV ii IV I ii ii I iii",
                "BenLeon / IV iii vi iii I iii ii I",
                "BenLeon / I IV vii° I IV vi vii° vii°",
                "BenLeon / I ii iii vi V vi vii° ii",
                "BenLeon / I iii I V ii IV IV IV",
                "BenLeon / I iii vi iii ii ii I ii",
                "BenLeon / V I vi iii vii° vi IV I",
                "BenLeon / V V iii V V I vii° iii",
                "BenLeon / V ii vi iii iii vi V vii°",
                "BenLeon / ii iii V vii° I I iii vi",
                "BenLeon / ii vi iii V V IV I ii",
                "BenLeon / ii vi vi vii° I iii V I",
                "BenLeon / iii vi V ii I IV vi vii°",
                "BenLeon / iii vi iii vi iii I I V",
                "BenLeon / iii vii° vi vi iii vi ii I",
                "BenLeon / vi IV vii° IV V IV vi IV",
                "BenLeon / vi iii IV iii I vi IV vi",
                "BenLeon / III III VI iv iv v VII v",
                "BenLeon / III III v iv VII VI III v",
                "BenLeon / III i III iv iv VII III i",
                "BenLeon / III i iv iv iv v VI VII",
                "BenLeon / VII III iv III v III i v",
                "BenLeon / VII ii° i v VI iv III iv",
                "BenLeon / VII v i VI VII v iv iv",
                "BenLeon / i III v i ii° iv v ii°",
                "BenLeon / i VII VII ii° ii° III VI iv",
                "BenLeon / i VII VII iv v VII iv i",
                "BenLeon / ii° III III v VII VII iv i",
                "BenLeon / ii° III i ii° III i III v",
                "BenLeon / ii° III v VII VI i iv iv",
                "BenLeon / ii° VII VII iv VI i VI VI",
                "BenLeon / ii° VII i VI iv ii° v v",
                "BenLeon / ii° VI VII III i i v III",
                "BenLeon / ii° ii° iv VI i v VI v",
                "BenLeon / ii° iv v i VI v VII ii°",
                "BenLeon / iv III VII III iv VI VI VI",
                "BenLeon / v ii° VI III VII i III VII",
                "BenLeon / I ii ii IV vii° vi ii vi",
                "BenLeon / I iii I iii vii° vi iii vii°",
                "BenLeon / I vii° I V vi V V iii",
                "BenLeon / V vi vi iii vi V iii ii",
                "BenLeon / ii ii iii ii vii° V vi IV",
                "BenLeon / ii vii° I vii° I vi iii vi",
                "BenLeon / iii IV vi vi ii vii° vii° I",
                "BenLeon / iii I vi I IV vi ii V",
                "BenLeon / iii V V V vi vi vii° iii",
                "BenLeon / iii V vii° V I iii V ii",
                "BenLeon / iii iii vi V vii° vii° I ii",
                "BenLeon / iii vi IV iii I iii V vi",
                "BenLeon / iii vi iii IV vii° ii IV I",
                "BenLeon / vi IV vii° I iii vii° vii° iii",
                "BenLeon / vi IV vii° I vii° I ii IV",
                "BenLeon / vi ii vi iii ii I iii IV",
                "BenLeon / vi vi vi vi iii I IV ii",
                "BenLeon / vii° IV vii° vi V I IV vii°",
                "BenLeon / vii° iii vi V iii vii° I IV",
                "BenLeon / vii° vi ii iii I vi vii° IV",
                "BenLeon / I I iii ii iii I ii vi",
                "BenLeon / I ii iii V iii iii iii I",
                "BenLeon / V iii V vii° I IV vi iii",
                "BenLeon / V iii ii iii I I vii° IV",
                "BenLeon / V iii iii ii I IV ii vii°",
                "BenLeon / V vi I ii vi IV V ii",
                "BenLeon / ii ii I vii° IV iii ii ii",
                "BenLeon / ii vi V I IV IV vii° IV",
                "BenLeon / ii vi V vi ii IV vi V",
                "BenLeon / ii vii° V V vi iii IV ii",
                "BenLeon / iii V vi I vii° ii IV iii",
                "BenLeon / iii iii ii ii iii V I I",
                "BenLeon / iii vii° V V vi IV iii iii",
                "BenLeon / vi vii° vii° iii V iii I I",
                "BenLeon / vii° I iii V I iii ii iii",
                "BenLeon / vii° iii ii V I ii IV I",
                "BenLeon / vii° iii vii° IV iii I V vii°",
                "BenLeon / vii° vi IV iii iii vii° ii ii",
                "BenLeon / vii° vi V I IV IV iii ii",
                "BenLeon / vii° vi ii I iii ii iii I",
                "BenLeon / III VI ii° iv VI III VI ii°",
                "BenLeon / III i iv i VI iv ii° i",
                "BenLeon / VII III VII VI VII ii° III iv",
                "BenLeon / VII VII iv i iv iv VI i",
                "BenLeon / VII VII v VI III iv i v",
                "BenLeon / VII VII v VI v ii° III i",
                "BenLeon / VII i III i ii° i iv III",
                "BenLeon / VI III v iv v i i VII",
                "BenLeon / VI iv i v ii° i i i",
                "BenLeon / VI iv iv VI ii° III iv i",
                "BenLeon / i i VI i i VII v III",
                "BenLeon / i i i III ii° i ii° i",
                "BenLeon / ii° VII VI i VI i iv iv",
                "BenLeon / ii° iv iv III v v III ii°",
                "BenLeon / iv III iv VI iv iv i VI",
                "BenLeon / iv VI VII VI v v ii° III",
                "BenLeon / iv iv VI v VII v VII III",
                "BenLeon / v VII VI iv VII v i v",
                "BenLeon / v VI v v ii° i i VI",
                "BenLeon / v v III III v v VI iv",
                "BenLeon / III ii° III iv i VII i iv",
                "BenLeon / III ii° VII i i i ii° ii°",
                "BenLeon / III v ii° iv v v III III",
                "BenLeon / VII i v v v ii° iv VII",
                "BenLeon / VII ii° iv VI iv III VII III",
                "BenLeon / VII iv iv III III VI VI VI",
                "BenLeon / VI ii° i VI III i ii° iv",
                "BenLeon / i VI iv III III i i ii°",
                "BenLeon / ii° i ii° i v i iv VI",
                "BenLeon / ii° ii° III v v III VII VII",
                "BenLeon / ii° ii° iv III iv i i i",
                "BenLeon / ii° iv i iv ii° iv i i",
                "BenLeon / iv III III VII ii° VI v III",
                "BenLeon / iv VII iv v VI ii° iv VII",
                "BenLeon / iv ii° VI III v VII i ii°",
                "BenLeon / iv ii° i iv III iv v VII",
                "BenLeon / iv iv VI VII VI VII VI VI",
                "BenLeon / v VI VII III III VI i III",
                "BenLeon / v v ii° VI v ii° iv v",
                "BenLeon / v v iv VI iv ii° ii° v",
                "BenLeon / IV I vi ii vi V IV IV",
                "BenLeon / IV V vi I ii V IV vi",
                "BenLeon / I IV iii V ii vi V IV",
                "BenLeon / I I IV iii I I ii iii",
                "BenLeon / I V vii° IV iii V I IV",
                "BenLeon / I vi IV ii V V vii° V",
                "BenLeon / V I IV iii iii vi V vii°",
                "BenLeon / V vii° V ii vii° ii ii IV",
                "BenLeon / ii I ii V IV IV V IV",
                "BenLeon / ii I vi vii° vi iii V vi",
                "BenLeon / iii I ii I I iii vi IV",
                "BenLeon / iii V vi vi IV ii ii vii°",
                "BenLeon / iii vi I iii I vii° vi IV",
                "BenLeon / iii vii° V ii vii° vi ii vii°",
                "BenLeon / vi IV vii° vii° iii vii° I vii°",
                "BenLeon / vi I vii° iii vi vii° vi vii°",
                "BenLeon / vi V IV ii IV ii ii V",
                "BenLeon / vi vii° iii ii IV vi I IV",
                "BenLeon / vii° V vii° vi IV V vii° vi",
                "BenLeon / vii° ii V vi I ii ii iii",
                "BenLeon / IV I I vi I vi V vi",
                "BenLeon / IV vii° iii vii° I ii vi V",
                "BenLeon / I vii° I vi vii° V vii° iii",
                "BenLeon / V IV ii IV IV V iii ii",
                "BenLeon / V IV vii° IV IV ii V I",
                "BenLeon / V V iii IV IV I ii I",
                "BenLeon / V ii I V vii° iii IV I",
                "BenLeon / ii I ii ii V ii iii vi",
                "BenLeon / ii V iii V vii° iii V vii°",
                "BenLeon / ii vi IV IV vi IV iii V",
                "BenLeon / ii vi vii° ii ii iii vi vii°",
                "BenLeon / iii IV V vii° iii V ii vi",
                "BenLeon / iii V IV IV vi iii I V",
                "BenLeon / iii ii IV IV vi ii V V",
                "BenLeon / iii vii° I IV IV vii° iii I",
                "BenLeon / vi IV vii° ii I IV I vi",
                "BenLeon / vi V vi vii° ii IV I IV",
                "BenLeon / vi ii V ii vii° I iii V",
                "BenLeon / vi ii ii IV iii vi vi I",
                "BenLeon / vi vii° V I vi vii° IV V",
                "BenLeon / IV IV vii° IV ii I iii I",
                "BenLeon / IV vi ii vii° vii° vi iii iii",
                "BenLeon / IV vii° I I IV IV ii V",
                "BenLeon / I V iii IV V V vii° IV",
                "BenLeon / V IV vi I iii vi I I",
                "BenLeon / V I vi I V ii iii I",
                "BenLeon / V V ii V V V V ii",
                "BenLeon / ii ii IV vi vi vii° I vii°",
                "BenLeon / iii V IV I vi IV vii° vii°",
                "BenLeon / iii V IV vi I ii vii° iii",
                "BenLeon / iii V I IV I I vi IV",
                "BenLeon / iii ii I IV I V IV IV",
                "BenLeon / iii iii iii IV iii IV ii IV",
                "BenLeon / iii vi vii° I iii IV I ii",
                "BenLeon / iii vii° V I iii V V V",
                "BenLeon / vi IV V vi IV ii IV vi",
                "BenLeon / vi IV ii IV V vi vi ii",
                "BenLeon / vii° V IV IV I IV I V",
                "BenLeon / vii° V IV vii° vi I I vi",
                "BenLeon / vii° ii vii° IV vi V I V",
                "BenLeon / IV ii vi I iii IV ii iii",
                "BenLeon / IV ii vi iii I iii ii iii",
                "BenLeon / IV vi I iii vi vii° vi vii°",
                "BenLeon / IV vii° vi IV iii vi vi V",
                "BenLeon / IV vii° vii° iii V vi iii V",
                "BenLeon / I IV iii ii iii vi IV iii",
                "BenLeon / I V V I vi I iii vii°",
                "BenLeon / I V V V ii vi I ii",
                "BenLeon / I iii ii IV vi iii IV I",
                "BenLeon / I vi iii vii° vii° ii ii iii",
                "BenLeon / I vii° vi vii° ii ii I I",
                "BenLeon / V I IV V vi ii I ii",
                "BenLeon / V I vi V ii ii vii° I",
                "BenLeon / V ii iii V iii ii I vi",
                "BenLeon / iii IV I I V IV iii IV",
                "BenLeon / iii IV ii ii V ii vi V",
                "BenLeon / iii vi I IV vi IV IV I",
                "BenLeon / vi iii I IV V V vi iii",
                "BenLeon / vii° I V vi iii iii IV ii",
                "BenLeon / vii° vii° vii° IV vi vii° vii° vi",
                "BenLeon / IV I vii° vi ii IV V iii",
                "BenLeon / I IV vii° vi V V V vii°",
                "BenLeon / I iii vii° I IV V iii vi",
                "BenLeon / V IV V iii I iii V IV",
                "BenLeon / V IV vi vii° V vii° iii vi",
                "BenLeon / V vii° ii iii vi IV iii IV",
                "BenLeon / ii iii vii° IV ii V V V",
                "BenLeon / iii IV vi vii° IV vi IV vi",
                "BenLeon / iii ii IV iii V IV vii° IV",
                "BenLeon / iii ii vii° I V vi vii° vii°",
                "BenLeon / iii vi ii I vi vi IV vii°",
                "BenLeon / vi IV IV vii° I V vii° vii°",
                "BenLeon / vi I I iii iii vi ii iii",
                "BenLeon / vi I vi vii° vi vii° vii° vii°",
                "BenLeon / vi iii V vi V vii° vi I",
                "BenLeon / vi vii° iii vii° ii ii iii V",
                "BenLeon / vii° iii V I I I ii IV",
                "BenLeon / vii° vi V vi vii° I I vii°",
                "BenLeon / vii° vii° I ii iii vii° V V",
                "BenLeon / vii° vii° I iii V IV IV V",
                "BenLeon / III VII iv VII III VI VII VII",
                "BenLeon / III v ii° VI v iv i v",
                "BenLeon / VII III VI VII iv VI VII VII",
                "BenLeon / VII III VI i VII i VII III",
                "BenLeon / VII III iv III ii° v i iv",
                "BenLeon / VII VI VI iv III VI VII iv",
                "BenLeon / VII i III ii° v ii° VI ii°",
                "BenLeon / VII iv VII iv VI III III VI",
                "BenLeon / VII v ii° i i iv VII VI",
                "BenLeon / VII v iv ii° v v VI i",
                "BenLeon / VI ii° VII ii° ii° v v i",
                "BenLeon / i VI VII iv iv v iv III",
                "BenLeon / i ii° i iv i iv iv v",
                "BenLeon / i iv III VI VII v VII III",
                "BenLeon / ii° i iv ii° VII VII VII i",
                "BenLeon / ii° ii° VII VII III III i iv",
                "BenLeon / ii° ii° iv VI v i i VII",
                "BenLeon / iv ii° VI III VI i v ii°",
                "BenLeon / v ii° v v III ii° VI ii°",
                "BenLeon / v v VII VI i III v i",
                "BenLeon / IV V I vi V vi V vii°",
                "BenLeon / IV V V ii IV vi iii IV",
                "BenLeon / IV ii IV ii ii IV iii vii°",
                "BenLeon / IV vi iii vi vii° V iii vii°",
                "BenLeon / IV vii° I iii iii I V iii",
                "BenLeon / I V ii vi V I V I",
                "BenLeon / I vi vii° V vii° I IV vii°",
                "BenLeon / V IV I V ii IV vi vii°",
                "BenLeon / ii IV IV vi IV vi vi ii",
                "BenLeon / ii IV vii° I iii ii V ii",
                "BenLeon / ii I iii vi vii° vii° IV V",
                "BenLeon / ii ii V I iii I I vii°",
                "BenLeon / ii vi iii V vii° ii IV iii",
                "BenLeon / ii vii° IV iii ii vii° vi iii",
                "BenLeon / iii V vi vii° IV iii V I",
                "BenLeon / iii iii vi I vii° I IV vi",
                "BenLeon / iii vii° IV V ii I IV IV",
                "BenLeon / vi ii vi ii vi IV I ii",
                "BenLeon / vii° V IV ii ii iii IV ii",
                "BenLeon / vii° iii vii° vii° I IV vii° vi",
                "BenLeon / IV iii iii I vi ii IV iii",
                "BenLeon / IV vi IV IV ii I vi V",
                "BenLeon / IV vii° vi V V ii I iii",
                "BenLeon / I IV IV vii° iii vi vi V",
                "BenLeon / V I vii° iii vi vi I I",
                "BenLeon / ii IV IV ii V vii° iii iii",
                "BenLeon / ii ii vii° ii I I V iii",
                "BenLeon / ii vii° vi ii ii ii IV iii",
                "BenLeon / iii IV ii I ii I vi vi",
                "BenLeon / iii ii iii IV vi iii V ii",
                "BenLeon / vi IV ii vii° vi iii iii I",
                "BenLeon / vi V iii I IV vii° ii IV",
                "BenLeon / vi ii ii vii° vii° iii V V",
                "BenLeon / vi iii iii iii ii IV vi vii°",
                "BenLeon / vi iii vii° V vii° vii° ii iii",
                "BenLeon / vi vi ii V iii vi I vi",
                "BenLeon / vi vii° I vi I vi vii° IV",
                "BenLeon / vii° I iii vii° vii° I vii° vii°",
                "BenLeon / vii° ii vii° IV V I IV vii°",
                "BenLeon / vii° iii V IV IV ii vi V",
                "BenLeon / VII III ii° III v iv VI VI",
                "BenLeon / VII i v VII v VII v VII",
                "BenLeon / VII iv III III III i v VI",
                "BenLeon / VII v iv v i iv v VI",
                "BenLeon / VI III iv iv iv ii° iv v",
                "BenLeon / VI i iv v III III v ii°",
                "BenLeon / VI ii° VII III VII III v VII",
                "BenLeon / VI iv VI VI iv VII VII VII",
                "BenLeon / VI iv VI i VI i iv VII",
                "BenLeon / i i VII v i ii° iv III",
                "BenLeon / i v v III III III i v",
                "BenLeon / ii° III i III VII ii° VII ii°",
                "BenLeon / ii° VII i iv VII VI VI III",
                "BenLeon / ii° ii° ii° ii° v VI v iv",
                "BenLeon / ii° iv ii° i VI VII iv VI",
                "BenLeon / iv iv ii° v v ii° v VII",
                "BenLeon / iv v III VII III i VI VI",
                "BenLeon / v VII VII ii° III iv i iv",
                "BenLeon / v VI ii° ii° III iv i i",
                "BenLeon / v iv VII v i VII VII v",
                "BenLeon / III VI ii° v III i i ii°",
                "BenLeon / III VI v III iv III III v",
                "BenLeon / VII III VII VI i iv i v",
                "BenLeon / VII VI iv iv III VI i i",
                "BenLeon / VII i III v VI iv VII VII",
                "BenLeon / VII iv v ii° i VII VII VI",
                "BenLeon / VII v iv ii° VI i VI iv",
                "BenLeon / VI ii° VII i VI VI VII VI",
                "BenLeon / i III VII v ii° VII i III",
                "BenLeon / i III i VII VI i v v",
                "BenLeon / ii° III i v VI v i VII",
                "BenLeon / ii° iv ii° v iv v ii° iv",
                "BenLeon / iv ii° ii° iv i III iv ii°",
                "BenLeon / v III iv i i VII III ii°",
                "BenLeon / v VII ii° i III i v v",
                "BenLeon / v VI III VI III VI iv III",
                "BenLeon / v VI ii° VII VI i III III",
                "BenLeon / v i ii° ii° i v VII III",
                "BenLeon / v i iv ii° ii° VII iv III",
                "BenLeon / v iv III ii° ii° ii° ii° iv",
                "BenLeon / IV vi V iii ii V I I I",
                "BenLeon / IV vi ii V I ii iii V vii°",
                "BenLeon / IV vii° ii iii ii I vi V I",
                "BenLeon / I iii vi iii vii° ii vii° I ii",
                "BenLeon / V IV I vii° vi vi iii V vii°",
                "BenLeon / V V I vi ii ii vi vi I",
                "BenLeon / V ii I V vi vii° I iii vii°",
                "BenLeon / ii IV IV ii vii° vi V IV V",
                "BenLeon / ii V IV iii I ii IV V ii",
                "BenLeon / ii iii IV ii V ii IV vi IV",
                "BenLeon / ii vi V vii° iii ii vi iii vii°",
                "BenLeon / ii vii° I vi IV vi V vi I",
                "BenLeon / iii I vii° vii° I ii I V vii°",
                "BenLeon / iii V vii° IV ii V vi vi I",
                "BenLeon / iii iii vi ii vii° iii vii° I vi",
                "BenLeon / vi IV vii° IV ii iii ii ii vii°",
                "BenLeon / vi iii iii vi IV vii° I vi iii",
                "BenLeon / vi vii° V iii vii° iii iii vii° I",
                "BenLeon / vi vii° ii vi V V ii V iii",
                "BenLeon / vi vii° vi vi V vii° ii vii° V",
                "BenLeon / IV I I vii° iii IV IV IV",
                "BenLeon / IV I V vii° IV V iii V",
                "BenLeon / IV V iii ii V iii iii iii",
                "BenLeon / IV V iii iii ii IV I ii",
                "BenLeon / IV V vii° IV V vi V IV",
                "BenLeon / I iii vii° IV vi vii° V vii°",
                "BenLeon / I vi V ii I V iii IV",
                "BenLeon / ii I ii vii° IV vii° vii° iii",
                "BenLeon / ii I vi I V vii° vi iii",
                "BenLeon / ii vi ii vii° I iii vii° IV",
                "BenLeon / iii I V vi ii I vi IV",
                "BenLeon / iii I vi vii° I ii I iii",
                "BenLeon / iii V vii° ii V vi iii ii",
                "BenLeon / iii iii ii I vii° vii° ii iii",
                "BenLeon / iii vii° ii vii° I I I vii°",
                "BenLeon / vi V V vi I I vi vi",
                "BenLeon / vi V ii vii° iii IV IV IV",
                "BenLeon / vii° I ii I vi iii iii iii",
                "BenLeon / vii° V vii° vi vii° iii V I",
                "BenLeon / vii° ii vii° IV vii° V vi IV",
                "BenLeon / IV vii° I V vi ii vi I",
                "BenLeon / I ii V IV ii iii V iii",
                "BenLeon / I iii V V IV iii I V",
                "BenLeon / V vi iii V vi ii IV vii°",
                "BenLeon / ii IV vii° I iii vii° vii° V",
                "BenLeon / ii vi vii° I ii vii° ii IV",
                "BenLeon / ii vii° I V I IV IV iii",
                "BenLeon / iii IV ii V iii I iii vi",
                "BenLeon / iii vii° IV I vii° ii vi vii°",
                "BenLeon / iii vii° IV I vii° iii I V",
                "BenLeon / iii vii° vii° iii V iii V vi",
                "BenLeon / vi I ii vi IV vii° I vii°",
                "BenLeon / vi I vi ii iii vii° iii ii",
                "BenLeon / vi ii I ii IV IV IV IV",
                "BenLeon / vi iii vi vii° iii vii° V vi",
                "BenLeon / vi vi iii ii IV I vii° IV",
                "BenLeon / vii° IV ii IV iii V vi I",
                "BenLeon / vii° ii vi iii I ii I I",
                "BenLeon / vii° vi ii IV V vii° vi ii",
                "BenLeon / vii° vi iii vi V iii vii° V",
                "BenLeon / IV iii vii° iii vii° vii° V ii",
                "BenLeon / IV vii° V vi vii° IV I I",
                "BenLeon / I V iii ii vii° I IV vi",
                "BenLeon / I vii° vii° vi IV vi vii° vi",
                "BenLeon / V vi iii vi IV vi ii IV",
                "BenLeon / ii I I ii iii IV IV vi",
                "BenLeon / ii iii I ii IV I iii V",
                "BenLeon / ii iii iii V I V vii° iii",
                "BenLeon / ii vii° ii iii iii iii IV I",
                "BenLeon / iii iii ii I IV vi I vi",
                "BenLeon / iii iii vi V vi iii IV iii",
                "BenLeon / iii vi vi vii° ii iii I ii",
                "BenLeon / vi I I I I vi I I",
                "BenLeon / vi V iii IV ii vii° iii vi",
                "BenLeon / vi ii V iii V V iii vi",
                "BenLeon / vi iii ii V ii I V iii",
                "BenLeon / vi vii° vi ii iii vii° iii vii°",
                "BenLeon / vii° I vii° vii° IV ii I I",
                "BenLeon / vii° iii ii vi iii ii vii° vii°",
                "BenLeon / vii° vi ii IV I I vi I",
                "BenLeon / IV I iii vi IV IV iii V",
                "BenLeon / IV V V iii iii vii° IV iii",
                "BenLeon / IV vi V I vii° V V vii°",
                "BenLeon / I I vii° IV vi vi ii ii",
                "BenLeon / I vii° iii vii° ii IV IV iii",
                "BenLeon / I vii° vii° ii IV vi V iii",
                "BenLeon / V IV I IV vi V IV iii",
                "BenLeon / ii IV ii V ii I ii ii",
                "BenLeon / ii I I iii V vi IV vii°",
                "BenLeon / ii ii vii° vii° vii° vii° ii iii",
                "BenLeon / iii IV I vi vi IV vii° I",
                "BenLeon / iii IV vii° I vi vi vi iii",
                "BenLeon / iii V vi V IV I vi vi",
                "BenLeon / iii iii I vi vi vi IV iii",
                "BenLeon / iii vii° V ii IV vii° ii I",
                "BenLeon / iii vii° iii I IV IV vii° vii°",
                "BenLeon / vi V IV iii V iii V vii°",
                "BenLeon / vi ii I V IV ii vi IV",
                "BenLeon / vi vii° IV IV IV IV IV IV",
                "BenLeon / vi vii° vii° V ii I IV iii",
                "BenLeon / III i III iv III v ii° VI",
                "BenLeon / III iv i VI ii° VI VI v",
                "BenLeon / III v III i VII VII ii° III",
                "BenLeon / III v VI III i v ii° iv",
                "BenLeon / VII VI III III VI VI v III",
                "BenLeon / VII iv v VII ii° iv III iv",
                "BenLeon / VII v iv VI III v v iv",
                "BenLeon / VI VII VI VI VI v ii° ii°",
                "BenLeon / VI VII v VII i i VII III",
                "BenLeon / VI i iv VI III III ii° ii°",
                "BenLeon / VI i iv VI VII v v v",
                "BenLeon / i VI v ii° VI i VI VI",
                "BenLeon / i i v iv VI III i ii°",
                "BenLeon / i v VII v VII ii° iv VII",
                "BenLeon / i v ii° VI VI ii° iv v",
                "BenLeon / ii° VII v v VII III III VI",
                "BenLeon / ii° ii° III ii° III iv i VI",
                "BenLeon / ii° ii° iv iv v ii° v v",
                "BenLeon / iv ii° VII VI iv i VI i",
                "BenLeon / v VII iv i v VI ii° ii°",
                "BenLeon / IV IV I ii V I ii vi",
                "BenLeon / IV IV vi ii ii vi vi vii°",
                "BenLeon / IV I vi vii° vi ii vii° ii",
                "BenLeon / IV ii IV I vii° IV ii vii°",
                "BenLeon / IV iii vii° iii vii° vii° I V",
                "BenLeon / IV vii° IV V vi IV V vii°",
                "BenLeon / I IV IV ii V vii° ii I",
                "BenLeon / I I I I vii° IV ii IV",
                "BenLeon / I ii IV vii° I IV IV iii",
                "BenLeon / I ii vi IV V vi ii IV",
                "BenLeon / I vii° IV I vii° ii V IV",
                "BenLeon / I vii° vii° V vii° IV vii° vi",
                "BenLeon / V IV I I ii IV I iii",
                "BenLeon / V IV vi vii° IV iii I iii",
                "BenLeon / V I I V I ii IV I",
                "BenLeon / V I iii ii vi vii° ii IV",
                "BenLeon / V I vii° ii IV ii iii ii",
                "BenLeon / V V I vi iii V I IV",
                "BenLeon / V V vii° V I V vi iii",
                "BenLeon / V ii ii iii I I I vi",
                "BenLeon / V ii vi IV IV I IV iii",
                "BenLeon / V iii vii° IV ii vii° vi IV",
                "BenLeon / V vii° I iii vi IV ii iii",
                "BenLeon / V vii° ii vi vi iii iii ii",
                "BenLeon / V vii° vii° iii I vii° iii IV",
                "BenLeon / ii IV IV vi I IV IV ii",
                "BenLeon / ii I iii ii vi vii° vii° vii°",
                "BenLeon / ii V V iii I ii I V",
                "BenLeon / ii V vii° vii° IV IV ii IV",
                "BenLeon / ii ii V I V iii iii vi",
                "BenLeon / ii ii ii iii iii vi vi vii°",
                "BenLeon / ii iii V vi V vii° vi vii°",
                "BenLeon / iii iii vii° vi IV IV iii vi",
                "BenLeon / iii iii vii° vii° vi I vi iii",
                "BenLeon / iii vi ii V ii IV iii I",
                "BenLeon / vi ii ii V vii° vi vi I",
                "BenLeon / vi iii ii ii vii° vi iii vii°",
                "BenLeon / vi vi IV I I I vi IV",
                "BenLeon / vi vi I vii° V IV vi IV",
                "BenLeon / vii° iii V vi iii iii iii vi",
                "BenLeon / IV vi IV vi IV IV I IV",
                "BenLeon / I V iii I vi vii° ii IV",
                "BenLeon / I ii ii vii° vii° ii vii° V",
                "BenLeon / I ii iii vii° ii I vii° vii°",
                "BenLeon / V ii IV I I iii I vii°",
                "BenLeon / V iii iii I IV iii I iii",
                "BenLeon / ii I IV iii vi ii vi vii°",
                "BenLeon / ii I iii V iii I vi vii°",
                "BenLeon / ii V vi iii iii ii I ii",
                "BenLeon / ii vii° I I vii° V V ii",
                "BenLeon / iii IV I vii° ii IV vii° V",
                "BenLeon / iii I IV I vi V V IV",
                "BenLeon / iii I ii iii vi vi V ii",
                "BenLeon / iii V vii° ii vi iii IV IV",
                "BenLeon / iii iii ii iii iii ii vii° vi",
                "BenLeon / vi ii ii I vii° I vi I",
                "BenLeon / vi ii iii vii° iii vi IV iii",
                "BenLeon / vi vi iii IV ii I vii° V",
                "BenLeon / vii° I I vi ii V vii° vi",
                "BenLeon / vii° vi I vii° V ii V vi",
                "BenLeon / III VII VI VII VI v ii° III",
                "BenLeon / III VII iv ii° v VII ii° i",
                "BenLeon / III i VII v III iv v VII",
                "BenLeon / III ii° III III i ii° ii° v",
                "BenLeon / III iv ii° III i III i v",
                "BenLeon / III iv iv VI ii° ii° v VII",
                "BenLeon / III v III ii° VI v VI VI",
                "BenLeon / i III iv ii° VI VI VII ii°",
                "BenLeon / i ii° ii° ii° v VII iv VII",
                "BenLeon / i iv VII ii° i VII III iv",
                "BenLeon / i v i i iv VI VI VII",
                "BenLeon / ii° III VII VII III III III i",
                "BenLeon / ii° III iv iv ii° VI v v",
                "BenLeon / ii° i i VII VII iv i VII",
                "BenLeon / iv VII i i VII III VI VI",
                "BenLeon / iv ii° VI iv VI VI iv ii°",
                "BenLeon / iv v ii° VII VII III v III",
                "BenLeon / v III VI i ii° III III v",
                "BenLeon / v VII iv i i iv III ii°",
                "BenLeon / v ii° III VI i i iv ii°",
                "BenLeon / III iv III VII iv VII VI ii°",
                "BenLeon / III iv v ii° ii° VII III v",
                "BenLeon / VI VII iv VI III VII i v",
                "BenLeon / VI VII iv VI VI ii° III VII",
                "BenLeon / VI i iv i i i ii° ii°",
                "BenLeon / VI iv III III v VI VII iv",
                "BenLeon / i III VI v i VII VII iv",
                "BenLeon / i III ii° iv iv ii° i v",
                "BenLeon / i VI VII VII VII VI VII iv",
                "BenLeon / i VI VII ii° v i v VII",
                "BenLeon / i i III ii° III III i VI",
                "BenLeon / ii° VI VII VI iv III v iv",
                "BenLeon / ii° VI VI iv III III iv ii°",
                "BenLeon / ii° VI ii° VI i VI v ii°",
                "BenLeon / ii° i v III iv III ii° III",
                "BenLeon / ii° ii° v VII VI III v v",
                "BenLeon / ii° v ii° VII VI iv iv III",
                "BenLeon / iv III i ii° v iv VI VI",
                "BenLeon / v VII VII i ii° VII i III",
                "BenLeon / v i i VII i iv VI VI",
                "BenLeon / IV IV I vi IV V iii vi",
                "BenLeon / IV IV ii I ii iii ii vi",
                "BenLeon / IV I ii iii IV vi V vii°",
                "BenLeon / IV V IV ii vi vii° vi iii",
                "BenLeon / IV ii IV vi iii ii IV I",
                "BenLeon / I V IV iii iii vii° vii° IV",
                "BenLeon / V IV ii iii ii vi vi IV",
                "BenLeon / V ii ii I ii vii° vii° IV",
                "BenLeon / V iii iii I ii ii V I",
                "BenLeon / V vii° ii IV ii I I vi",
                "BenLeon / V vii° vi V iii V iii IV",
                "BenLeon / ii vi iii ii iii ii ii ii",
                "BenLeon / iii vii° IV iii I ii I IV",
                "BenLeon / iii vii° IV vii° V ii ii V",
                "BenLeon / vi I ii ii vii° vii° iii ii",
                "BenLeon / vi vi IV vii° vi IV vi iii",
                "BenLeon / vii° IV vi vii° IV iii IV vi",
                "BenLeon / vii° I vi IV IV ii I iii",
                "BenLeon / vii° iii ii vi ii ii vi iii",
                "BenLeon / vii° vi vi vii° I vii° vii° vi",
                "BenLeon / IV IV vi iii V I vi vi",
                "BenLeon / IV V iii I vii° IV I vii°",
                "BenLeon / IV iii IV vi ii V V I",
                "BenLeon / IV vii° I I I vi vii° iii",
                "BenLeon / I I I vii° V V vi IV",
                "BenLeon / I I ii vi iii ii vii° I",
                "BenLeon / I V I vii° V ii IV I",
                "BenLeon / I V V V ii I IV vii°",
                "BenLeon / I iii vi ii V IV iii V",
                "BenLeon / I vi V V iii V IV ii",
                "BenLeon / I vii° ii V I vii° iii vi",
                "BenLeon / I vii° ii vi I iii vii° vii°",
                "BenLeon / V IV ii vi iii I iii I",
                "BenLeon / ii IV iii ii iii iii IV vii°",
                "BenLeon / ii iii V vi I V iii vii°",
                "BenLeon / ii vi IV iii iii vii° vii° vi",
                "BenLeon / iii I iii I vii° vii° vi vii°",
                "BenLeon / vi IV I vii° iii IV ii iii",
                "BenLeon / vii° IV vi V V V vi vii°",
                "BenLeon / vii° I IV I I IV V vi",
                "BenLeon / IV IV iii V I iii I iii",
                "BenLeon / IV I vi I V iii V ii",
                "BenLeon / IV V iii vii° vi IV V ii",
                "BenLeon / IV iii iii I vi I IV I",
                "BenLeon / IV vii° IV iii V I iii I",
                "BenLeon / I IV I I ii vii° iii IV",
                "BenLeon / I V ii ii I vi vi V",
                "BenLeon / I iii V iii vii° V iii iii",
                "BenLeon / V V vi V I V vii° ii",
                "BenLeon / ii IV vii° vii° V I vii° vii°",
                "BenLeon / ii I vi I vi iii ii I",
                "BenLeon / ii V vii° vi V ii ii IV",
                "BenLeon / ii ii iii ii V ii ii ii",
                "BenLeon / ii vi V iii vi vii° vi vii°",
                "BenLeon / ii vii° I vi vii° vii° ii I",
                "BenLeon / iii ii V vii° I IV I V",
                "BenLeon / iii ii iii I ii I vi I",
                "BenLeon / iii iii I ii vi V IV vi",
                "BenLeon / vi vii° V vii° IV vi vi I",
                "BenLeon / vii° iii iii vi iii vi V iii",
                "BenLeon / IV IV V iii IV ii vi iii",
                "BenLeon / IV I vii° V V iii vi I",
                "BenLeon / IV I vii° vi IV iii V V",
                "BenLeon / I V iii IV vi vii° vi I",
                "BenLeon / I ii IV ii ii iii iii IV",
                "BenLeon / ii IV V iii iii I vii° IV",
                "BenLeon / ii iii I ii iii vii° iii V",
                "BenLeon / iii IV I iii ii I iii vi",
                "BenLeon / iii IV vi vii° IV ii ii V",
                "BenLeon / iii I IV ii ii V V iii",
                "BenLeon / iii I ii iii iii vii° iii iii",
                "BenLeon / iii ii ii vii° iii IV iii vii°",
                "BenLeon / iii vii° IV IV I vii° I iii",
                "BenLeon / iii vii° I vii° iii vii° iii I",
                "BenLeon / vi IV iii iii V iii V V",
                "BenLeon / vi vi iii V ii iii IV vii°",
                "BenLeon / vii° I vii° V ii iii IV vi",
                "BenLeon / vii° V V IV ii vi I iii",
                "BenLeon / vii° vi vii° vii° iii iii vi I",
                "BenLeon / vii° vii° IV V vii° vii° iii vii°",
                "BenLeon / IV I I IV I vii° IV IV",
                "BenLeon / I IV iii vi I vii° IV V",
                "BenLeon / I V V ii vi vi vi iii",
                "BenLeon / I ii vii° vii° V iii vi vii°",
                "BenLeon / I vi iii I V vii° vii° IV",
                "BenLeon / I vii° IV vii° V vi vii° I",
                "BenLeon / V IV iii I vi ii iii vii°",
                "BenLeon / V ii iii IV vii° ii vi iii",
                "BenLeon / V vii° vi vii° ii vi V I",
                "BenLeon / ii I I ii vi V vii° I",
                "BenLeon / ii I ii vii° ii V ii V",
                "BenLeon / ii vi vi vi iii V vii° iii",
                "BenLeon / ii vii° V vi ii IV vi I",
                "BenLeon / ii vii° ii vi IV iii vii° IV",
                "BenLeon / iii V ii iii ii V vi vii°",
                "BenLeon / iii V vi ii vi V iii vii°",
                "BenLeon / iii iii vi I IV IV V vii°",
                "BenLeon / iii vi ii IV V vii° I iii",
                "BenLeon / vi I ii ii IV vi ii V",
                "BenLeon / vii° vi IV I ii V vii° vi",
                "BenLeon / III III ii° iv VI VI iv VII",
                "BenLeon / III VI i VI VI ii° ii° VI",
                "BenLeon / III VI ii° v i VI III ii°",
                "BenLeon / III ii° iv ii° iv VI v v",
                "BenLeon / VII III ii° v ii° i III III",
                "BenLeon / VII i iv iv VI III VI iv",
                "BenLeon / VII ii° VII VII VI VII v v",
                "BenLeon / VII ii° VII ii° ii° v i III",
                "BenLeon / VII v v VII ii° ii° VI i",
                "BenLeon / VI VII III iv VI v i VII",
                "BenLeon / VI VII VII VI ii° iv i VII",
                "BenLeon / i III v ii° iv VI iv iv",
                "BenLeon / i VII iv VII iv i VI III",
                "BenLeon / i VI III III ii° i iv v",
                "BenLeon / i VI ii° III v iv v ii°",
                "BenLeon / i i iv v VII iv VII iv",
                "BenLeon / ii° ii° i i i i iv i",
                "BenLeon / v III v III VII v v i",
                "BenLeon / v ii° VII VII VII III ii° ii°",
                "BenLeon / v v VI VI VII VII i ii°",
                "BenLeon / IV IV IV ii V I ii ii",
                "BenLeon / IV I ii iii IV ii V iii",
                "BenLeon / IV V IV IV ii vi vi vii°",
                "BenLeon / IV V IV vi vi ii V vi",
                "BenLeon / IV vii° V iii I vii° IV ii",
                "BenLeon / I iii ii vi ii vii° iii IV",
                "BenLeon / V I V iii iii V IV vi",
                "BenLeon / V I iii ii I iii V vi",
                "BenLeon / V iii I I iii iii IV iii",
                "BenLeon / ii I V V vi vi V IV",
                "BenLeon / ii V vi ii ii IV V vi",
                "BenLeon / ii iii vii° I vi vii° ii I",
                "BenLeon / iii IV I vii° V I IV V",
                "BenLeon / iii I I IV I vii° ii vi",
                "BenLeon / iii iii vii° iii ii vi IV vi",
                "BenLeon / vi IV ii ii iii ii I iii",
                "BenLeon / vi V V iii V vii° I I",
                "BenLeon / vii° IV IV iii IV IV I IV",
                "BenLeon / vii° ii vi vi iii vii° V V",
                "BenLeon / vii° vi V vi ii V ii vii°",
                "BenLeon / IV V IV I vi V I I",
                "BenLeon / IV V I iii vi vii° vii° vii°",
                "BenLeon / IV ii I ii vii° vi V iii",
                "BenLeon / IV iii vii° vii° I ii vii° vii°",
                "BenLeon / I IV V I I vi iii ii",
                "BenLeon / I IV vii° ii ii iii I V",
                "BenLeon / I ii IV iii IV V iii vi",
                "BenLeon / V ii iii I vi I iii vii°",
                "BenLeon / ii I IV I I vii° vii° vii°",
                "BenLeon / ii I ii ii I iii iii ii",
                "BenLeon / ii vii° ii iii IV ii ii vi",
                "BenLeon / iii IV ii V I V V vii°",
                "BenLeon / iii V IV iii iii I V V",
                "BenLeon / vi IV vi V ii ii vi vi",
                "BenLeon / vi I IV IV vi I vi IV",
                "BenLeon / vi V vi vi ii ii vi vii°",
                "BenLeon / vi iii ii I vii° V vii° IV",
                "BenLeon / vii° ii I I vii° V vi ii",
                "BenLeon / vii° vii° ii iii V I vii° I",
                "BenLeon / vii° vii° vi iii vii° ii I vii°",
                "BenLeon / III III iv VI iv VII i VII",
                "BenLeon / III III iv VI iv v iv v",
                "BenLeon / III VII iv v VI III v ii°",
                "BenLeon / III VI III ii° III III iv ii°",
                "BenLeon / III VI III v ii° v iv i",
                "BenLeon / III VI iv VII ii° iv v i",
                "BenLeon / III ii° VII VI i i VI VI",
                "BenLeon / VII VII VI ii° i ii° i ii°",
                "BenLeon / VII VII ii° v VII iv VII ii°",
                "BenLeon / VI i VI III III i ii° VII",
                "BenLeon / VI i VI VI v v iv VI",
                "BenLeon / VI ii° ii° i v VII i III",
                "BenLeon / i ii° i iv i ii° ii° ii°",
                "BenLeon / ii° VI III v v iv iv iv",
                "BenLeon / ii° VI VI v III i i i",
                "BenLeon / ii° iv VII III III iv i VII",
                "BenLeon / ii° v ii° ii° v VII ii° VI",
                "BenLeon / iv III i i i i v iv",
                "BenLeon / iv v iv i III iv ii° iv",
                "BenLeon / iv v iv v i VII iv i",
                "BenLeon / III VII VI VII III III v VII",
                "BenLeon / III VII VI ii° v ii° ii° VI",
                "BenLeon / III v VI ii° iv v VII iv",
                "BenLeon / VII v VI ii° iv i VI VII",
                "BenLeon / VI III III i i iv ii° i",
                "BenLeon / VI i ii° VII III VII iv iv",
                "BenLeon / VI iv VII III III i v v",
                "BenLeon / VI v iv III v iv ii° ii°",
                "BenLeon / i VI i III III VII VII VI",
                "BenLeon / ii° III iv III III v III v",
                "BenLeon / ii° VI VII iv i i v iv",
                "BenLeon / ii° VI VI ii° III III VII ii°",
                "BenLeon / ii° i III v VII iv iv iv",
                "BenLeon / iv VII VI VII v VII VII VI",
                "BenLeon / iv VII i v VII ii° ii° ii°",
                "BenLeon / v VII iv v VI III VI iv",
                "BenLeon / v ii° VI i v VII iv ii°",
                "BenLeon / v ii° i VI VI III v i",
                "BenLeon / v v VII III VI iv ii° v",
                "BenLeon / v v VI i i III i v",
                "BenLeon / I IV vi I ii I iii V",
                "BenLeon / I I ii V iii vi vi IV",
                "BenLeon / I iii vi V I vii° I ii",
                "BenLeon / I vi I V vi vii° vi IV",
                "BenLeon / I vi ii ii ii ii vii° IV",
                "BenLeon / V V IV IV ii V V I",
                "BenLeon / V ii I ii vii° I vii° V",
                "BenLeon / V vi V iii ii vii° IV IV",
                "BenLeon / V vii° vi iii vii° V ii V",
                "BenLeon / V vii° vii° vii° iii vi vii° iii",
                "BenLeon / ii V IV ii vi iii vii° iii",
                "BenLeon / ii V I V IV V vi V",
                "BenLeon / iii IV IV ii V ii vii° V",
                "BenLeon / iii vi V vii° ii ii vii° iii",
                "BenLeon / iii vii° vi iii vi V I I",
                "BenLeon / vi IV ii ii vii° I I iii",
                "BenLeon / vi vi ii ii iii IV IV IV",
                "BenLeon / vii° V IV I iii vii° vi vii°",
                "BenLeon / vii° ii V I vi IV ii vii°",
                "BenLeon / vii° iii IV vi vi V I IV",
                "BenLeon / I IV V I vi ii V IV",
                "BenLeon / I I iii IV vii° V IV vi",
                "BenLeon / I V vii° V ii I I vii°",
                "BenLeon / I ii V V vi I I I",
                "BenLeon / V IV V IV IV I vii° I",
                "BenLeon / V I vi ii I vii° IV iii",
                "BenLeon / V iii I V I vii° vi IV",
                "BenLeon / V vi iii V V V vii° vii°",
                "BenLeon / ii V vii° vi iii iii iii I",
                "BenLeon / ii iii V iii vii° vii° V V",
                "BenLeon / ii vi vi I I IV I V",
                "BenLeon / iii IV vi V I I vii° IV",
                "BenLeon / iii V iii V IV I vi I",
                "BenLeon / iii vi vii° vi ii vii° vi ii",
                "BenLeon / vi IV ii vi IV I I V",
                "BenLeon / vi IV vii° vi ii iii V vii°",
                "BenLeon / vi vi vii° iii IV IV I ii",
                "BenLeon / vii° I vii° vii° V I vii° I",
                "BenLeon / vii° vi IV IV iii vi iii vi",
                "BenLeon / vii° vii° ii IV vii° IV ii vi",
                "BenLeon / IV IV vii° I iii iii vi IV",
                "BenLeon / IV IV vii° I iii vi V I",
                "BenLeon / IV vi vii° I vii° I vi iii",
                "BenLeon / I ii IV V ii vi I V",
                "BenLeon / V IV I vi vi I ii IV",
                "BenLeon / V V V vii° iii iii V iii",
                "BenLeon / V V ii I V vi iii ii",
                "BenLeon / V vi IV iii ii I ii V",
                "BenLeon / V vii° V IV vi V vi IV",
                "BenLeon / V vii° ii vi IV V V IV",
                "BenLeon / ii I IV I I vi vii° iii",
                "BenLeon / ii I vi ii IV ii iii ii",
                "BenLeon / ii ii vi ii ii ii IV ii",
                "BenLeon / vi I V IV vi vii° I ii",
                "BenLeon / vi V iii V vi I IV ii",
                "BenLeon / vi ii vii° I vii° I ii vi",
                "BenLeon / vi iii iii vii° IV vii° ii IV",
                "BenLeon / vi vii° I vi iii vi vii° ii",
                "BenLeon / vii° IV IV vii° vii° vii° IV V",
                "BenLeon / vii° I ii ii V IV I I",
                "BenLeon / IV I V I vii° vii° V I",
                "BenLeon / IV ii vii° vi I vii° iii vii°",
                "BenLeon / V IV vi IV I vii° I IV",
                "BenLeon / V vii° vii° IV vi iii V IV",
                "BenLeon / iii IV ii I vii° ii ii vi",
                "BenLeon / iii IV ii ii vii° vii° V IV",
                "BenLeon / iii V I vii° I ii vi V",
                "BenLeon / iii ii IV V I iii vi IV",
                "BenLeon / iii ii vi iii V iii IV V",
                "BenLeon / iii ii vi vii° I vii° V iii",
                "BenLeon / iii vi V I ii ii IV I",
                "BenLeon / iii vi iii IV IV IV vii° I",
                "BenLeon / vi I IV ii ii I vii° V",
                "BenLeon / vi vii° I ii ii iii iii I",
                "BenLeon / vii° IV I IV vii° I V ii",
                "BenLeon / vii° IV vii° iii IV I ii iii",
                "BenLeon / vii° IV vii° vii° vii° ii IV vii°",
                "BenLeon / vii° I iii IV I V ii vii°",
                "BenLeon / vii° vii° vi I vii° ii IV V",
                "BenLeon / vii° vii° vii° V IV ii IV I",
                "BenLeon / IV I IV ii I vii° V I",
                "BenLeon / IV ii IV iii I I vii° vi",
                "BenLeon / I V V IV V V V I",
                "BenLeon / I ii IV I vi ii V vi",
                "BenLeon / I vi iii IV vii° IV vii° vi",
                "BenLeon / I vi vii° IV I ii vii° V",
                "BenLeon / V iii vii° ii IV vi vi vii°",
                "BenLeon / ii ii ii V IV V ii I",
                "BenLeon / iii ii IV ii vi I V vii°",
                "BenLeon / iii iii I V iii I ii ii",
                "BenLeon / iii iii vii° vii° I iii vi V",
                "BenLeon / vi ii vi iii I I vii° IV",
                "BenLeon / vi vi vi vi I V vii° IV",
                "BenLeon / vi vi vii° I I I vi IV",
                "BenLeon / vii° IV IV iii vi vii° V V",
                "BenLeon / vii° ii I IV vi ii vi iii",
                "BenLeon / vii° ii I I ii I vi I",
                "BenLeon / vii° iii I V IV ii IV ii",
                "BenLeon / vii° iii V ii V IV vi I",
                "BenLeon / vii° iii vii° I I I I vi",
                "BenLeon / III III VII iv VII i iv v",
                "BenLeon / III VI VII i ii° VII v ii°",
                "BenLeon / III VI iv i i iv VI VI",
                "BenLeon / III ii° i ii° VII III VI ii°",
                "BenLeon / III v III III VI iv ii° iv",
                "BenLeon / VII III i ii° ii° ii° v ii°",
                "BenLeon / VII VI III VI VI III iv VII",
                "BenLeon / VII VI i VI III VII iv III",
                "BenLeon / VI i VII VII VII III VI VI",
                "BenLeon / VI ii° VI VI VI i v VII",
                "BenLeon / i III iv iv VII VI ii° VI",
                "BenLeon / i VII iv i i VII ii° VII",
                "BenLeon / ii° III III VII i ii° VII III",
                "BenLeon / ii° VI i VI III VI VII VII",
                "BenLeon / ii° ii° III III v iv iv i",
                "BenLeon / iv VI iv ii° iv III v ii°",
                "BenLeon / iv i iv III ii° III v VII",
                "BenLeon / iv v VI i VII v VI III",
                "BenLeon / v ii° i v ii° i VII ii°",
                "BenLeon / v iv VI III ii° i ii° v",
                "BenLeon / IV iii ii I vi iii iii vi",
                "BenLeon / IV vii° IV iii I ii V iii",
                "BenLeon / I I iii IV IV ii vii° iii",
                "BenLeon / I ii iii vii° IV vii° iii vii°",
                "BenLeon / I iii I ii vii° vii° IV vi",
                "BenLeon / I iii ii iii iii V I iii",
                "BenLeon / I vi vii° IV iii IV iii I",
                "BenLeon / ii IV vi ii vii° IV V I",
                "BenLeon / ii ii I ii iii V I ii",
                "BenLeon / ii iii vii° vii° iii V V I",
                "BenLeon / ii vi IV I V iii vi V",
                "BenLeon / ii vii° vi ii vi I ii IV",
                "BenLeon / iii IV vi ii V ii vii° V",
                "BenLeon / iii vii° vi V iii vi IV IV",
                "BenLeon / vi IV V ii vi vi iii V",
                "BenLeon / vi IV ii vii° vi ii vi vi",
                "BenLeon / vi IV vii° iii vi IV I V",
                "BenLeon / vi iii ii V vii° IV I V",
                "BenLeon / vii° iii I ii IV iii vi vi",
                "BenLeon / vii° vii° IV V iii ii I iii",
                "BenLeon / IV iii V V vii° vi IV iii",
                "BenLeon / IV vi iii ii I V V vii°",
                "BenLeon / I V vi vi V vii° vi ii",
                "BenLeon / I ii ii V ii ii ii vi",
                "BenLeon / I vi ii iii IV ii V I",
                "BenLeon / V I iii ii I vi ii I",
                "BenLeon / ii ii ii I IV vii° iii iii",
                "BenLeon / ii ii iii V IV vii° vi ii",
                "BenLeon / ii vii° V vi iii V ii IV",
                "BenLeon / iii IV vii° IV I vi iii vii°",
                "BenLeon / iii I iii iii I vii° vii° ii",
                "BenLeon / iii I vi I iii I vi IV",
                "BenLeon / vi ii I iii V V V ii",
                "BenLeon / vi ii V vi vi IV V IV",
                "BenLeon / vi iii vii° iii V vii° iii vi",
                "BenLeon / vii° V IV I vii° ii vi IV",
                "BenLeon / vii° V vi IV I iii I ii",
                "BenLeon / vii° ii V iii vii° vii° ii IV",
                "BenLeon / vii° ii vi IV iii iii V vii°",
                "BenLeon / vii° iii I I IV vi I V",
                "BenLeon / III VII III III iv III VII ii°",
                "BenLeon / III VI VII i VI ii° ii° VI",
                "BenLeon / III v ii° VI ii° iv i ii°",
                "BenLeon / VII III v VI VII VI i VII",
                "BenLeon / VII III v ii° i VII VI iv",
                "BenLeon / VII VII i VII iv iv iv iv",
                "BenLeon / VII VI v iv VI III ii° VI",
                "BenLeon / VII i III III iv i iv iv",
                "BenLeon / VII i III ii° v v VI VII",
                "BenLeon / VI ii° VI ii° ii° VII III i",
                "BenLeon / VI iv i v ii° i i III",
                "BenLeon / i VI III III i VI VI VI",
                "BenLeon / i VI i VI v ii° VI III",
                "BenLeon / i ii° i III VII v i VI",
                "BenLeon / i ii° i iv v i III ii°",
                "BenLeon / i ii° iv VII i ii° iv iv",
                "BenLeon / i iv ii° iv i iv VI v",
                "BenLeon / i v VI iv VII i VII iv",
                "BenLeon / ii° ii° i iv ii° ii° VII III",
                "BenLeon / v i ii° VI VII III VI III",
                "BenLeon / III VII III VII ii° iv VI iv",
                "BenLeon / III VI VII VII ii° i i VII",
                "BenLeon / VII III v VII III VII ii° v",
                "BenLeon / VII VII VI ii° i VI v v",
                "BenLeon / VII VII v VII iv iv VI i",
                "BenLeon / VI III ii° III iv III iv III",
                "BenLeon / i iv VI VII v VI III v",
                "BenLeon / i iv iv III VII VII v ii°",
                "BenLeon / i iv iv III iv i ii° ii°",
                "BenLeon / i iv v i ii° ii° VII VI",
                "BenLeon / i v i VI VI i VII i",
                "BenLeon / ii° III ii° ii° ii° iv ii° VII",
                "BenLeon / ii° III ii° ii° iv iv iv VII",
                "BenLeon / ii° VI ii° VI iv VII VII ii°",
                "BenLeon / ii° iv VII VI v VII i v",
                "BenLeon / ii° v III i VI v iv III",
                "BenLeon / iv III VII VI iv VI VII v",
                "BenLeon / iv VI ii° VI VII i i iv",
                "BenLeon / v i iv III ii° VII III III",
                "BenLeon / v v ii° iv VI III v ii°",
                "BenLeon / IV V ii IV I V iii vii°",
                "BenLeon / IV iii V V V V V vii°",
                "BenLeon / IV vi I IV vii° V vi vii°",
                "BenLeon / IV vii° V I V V vi iii",
                "BenLeon / I ii ii IV vii° V iii vi",
                "BenLeon / V I iii iii vii° iii vii° iii",
                "BenLeon / V V ii vi iii vi vi vii°",
                "BenLeon / V ii IV V vii° vi I V",
                "BenLeon / V iii V iii I IV IV iii",
                "BenLeon / V vii° IV IV vii° iii IV I",
                "BenLeon / ii iii V iii I ii vii° vi",
                "BenLeon / iii I IV ii I V IV vi",
                "BenLeon / iii iii ii I ii ii I I",
                "BenLeon / iii iii iii V vii° I V IV",
                "BenLeon / iii vi V IV vi iii V I",
                "BenLeon / vi IV ii ii V iii vi vii°",
                "BenLeon / vi I IV ii I V I vii°",
                "BenLeon / vi I vi IV ii iii I vi",
                "BenLeon / vi V vi V iii I V V",
                "BenLeon / vii° ii ii V iii iii vii° ii",
                "BenLeon / IV I ii IV vii° vi iii V",
                "BenLeon / IV V vi I iii vii° IV ii",
                "BenLeon / IV ii IV I IV IV IV vii°",
                "BenLeon / IV ii iii vi V iii ii I",
                "BenLeon / I V I ii ii V ii ii",
                "BenLeon / I ii iii I I I vii° vi",
                "BenLeon / V I I vi vi iii IV V",
                "BenLeon / V I iii iii IV I I iii",
                "BenLeon / V iii vii° ii vii° iii iii vi",
                "BenLeon / V vi IV vi I ii I IV",
                "BenLeon / ii V V I IV iii I vi",
                "BenLeon / ii iii vi vi V ii I I",
                "BenLeon / iii I iii IV V V ii I",
                "BenLeon / iii vi IV iii vi V ii IV",
                "BenLeon / vi V ii vii° vii° vi ii iii",
                "BenLeon / vi vii° V iii vii° ii vii° vii°",
                "BenLeon / vi vii° ii vii° vi vi V vii°",
                "BenLeon / vii° IV V IV IV ii ii vi",
                "BenLeon / vii° IV ii V vii° vi iii V",
                "BenLeon / vii° iii vi iii I ii ii vii°",
                "BenLeon / IV IV vi iii ii V",
                "BenLeon / IV I IV ii ii I",
                "BenLeon / IV V V iii iii ii",
                "BenLeon / I V vi V vii° V",
                "BenLeon / I V vii° ii I vi",
                "BenLeon / I V vii° iii vii° vi",
                "BenLeon / ii I vi ii IV vi",
                "BenLeon / ii iii IV IV V ii",
                "BenLeon / ii iii I IV vii° I",
                "BenLeon / ii iii iii vi iii vi",
                "BenLeon / ii vi iii iii IV V",
                "BenLeon / iii IV vii° iii IV ii",
                "BenLeon / iii I IV V V IV",
                "BenLeon / iii I ii I IV I",
                "BenLeon / iii I ii iii I iii",
                "BenLeon / iii V ii vi vi iii",
                "BenLeon / iii V vi vii° V V",
                "BenLeon / iii vii° IV ii V IV",
                "BenLeon / iii vii° IV vii° vi I",
                "BenLeon / vii° iii ii I iii vi",
                "BenLeon / I I VII I VI VII V VI",
                "BenLeon / I I VII III III II V V",
                "BenLeon / I V III I II III III VII",
                "BenLeon / I VI VI IV bVII bVII II bVII",
                "BenLeon / I bVII bII bII I bIII bII I",
                "BenLeon / I III II V VII I VII VI",
                "BenLeon / I I bVII IV V V IV IV",
                "BenLeon / I V IV bIII V bVI bIII bIII",
                "BenLeon / I VI III VII II III I VI",
                "BenLeon / I bVII I I II bIII bVII II",
                "BenLeon / IV IV IV vii° ii V vii° V",
                "BenLeon / IV IV ii vi iii I vii° IV",
                "BenLeon / IV vi V vi vi iii IV V",
                "BenLeon / IV vi ii IV vi iii vi V",
                "BenLeon / I IV IV ii IV iii ii IV",
                "BenLeon / I IV IV ii vi iii IV ii",
                "BenLeon / I I I vi V vi IV IV",
                "BenLeon / I I vi vi I IV vi ii",
                "BenLeon / I V ii IV vii° IV iii IV",
                "BenLeon / I vi V IV iii vii° vi iii",
                "BenLeon / I vi V ii iii I I V",
                "BenLeon / V ii I I vi IV iii I",
                "BenLeon / V vii° IV iii vi vii° vi iii",
                "BenLeon / ii IV I ii iii V IV vii°",
                "BenLeon / ii ii iii IV I V IV I",
                "BenLeon / vi iii IV vii° IV iii vii° ii",
                "BenLeon / vi iii I iii V V ii iii",
                "BenLeon / vii° IV V IV vi ii vii° iii",
                "BenLeon / vii° vi I iii vii° I vii° V",
                "BenLeon / vii° vii° vi vii° ii ii vii° I",
                "BenLeon / IV I IV vii° vii° I vi V",
                "BenLeon / IV V ii ii I vi vi V",
                "BenLeon / IV iii V IV iii vi ii iii",
                "BenLeon / IV iii vi vii° vii° I IV V",
                "BenLeon / I IV iii IV ii iii vii° ii",
                "BenLeon / I I vi vi I vii° vi vii°",
                "BenLeon / V I V iii vi iii IV vii°",
                "BenLeon / V V vi iii I iii IV vii°",
                "BenLeon / V iii iii V IV iii vi vi",
                "BenLeon / V vi ii vii° iii ii vii° iii",
                "BenLeon / ii vii° iii V vi vii° vi iii",
                "BenLeon / iii vi vii° vii° IV vii° V IV",
                "BenLeon / iii vii° ii IV I vii° IV IV",
                "BenLeon / vi iii IV IV V ii I V",
                "BenLeon / vi iii iii V vi ii ii ii",
                "BenLeon / vi vi ii IV vii° iii vi vii°",
                "BenLeon / vi vii° V V V V ii iii",
                "BenLeon / vii° I I ii vi vi vi iii",
                "BenLeon / vii° ii iii V V IV iii IV",
                "BenLeon / vii° ii iii ii I IV iii vii°",
                "BenLeon / III III iv VII III i iv iv",
                "BenLeon / III VII VII VII VII v v III",
                "BenLeon / III i i iv iv VII i i",
                "BenLeon / III ii° i ii° ii° ii° VII III",
                "BenLeon / VII III v III iv ii° i VI",
                "BenLeon / VI III VI III i iv i VI",
                "BenLeon / i VI III v VII i VII i",
                "BenLeon / i VI VII ii° III iv III iv",
                "BenLeon / i iv III ii° ii° III VII VI",
                "BenLeon / i v VII III VI III v VI",
                "BenLeon / ii° III v VI i VI VII v",
                "BenLeon / ii° VI iv VI III ii° III III",
                "BenLeon / ii° i III i ii° VII i VII",
                "BenLeon / ii° iv i v ii° iv VII v",
                "BenLeon / ii° v VII VI i III VI iv",
                "BenLeon / iv VI i III ii° III iv VI",
                "BenLeon / iv VI ii° v VII i ii° i",
                "BenLeon / v ii° i VI i iv VI v",
                "BenLeon / v v ii° i iv VII v VII",
                "BenLeon / v v v VI III ii° v VII",
                "BenLeon / IV iii I vii° vi I IV V",
                "BenLeon / IV iii vi ii vii° IV vii° vi",
                "BenLeon / IV iii vi vii° IV vii° I I",
                "BenLeon / IV vii° vii° IV I I ii iii",
                "BenLeon / I iii I vii° IV iii V vi",
                "BenLeon / I iii ii vii° ii iii vi vii°",
                "BenLeon / I iii vi vii° vi IV vi IV",
                "BenLeon / I vi IV IV iii I iii V",
                "BenLeon / V ii iii vii° ii vii° iii iii",
                "BenLeon / V iii ii V I iii ii iii",
                "BenLeon / V vii° iii V IV IV IV vi",
                "BenLeon / ii IV I IV vi ii ii ii",
                "BenLeon / ii I vii° I vi I I vii°",
                "BenLeon / ii iii IV IV vi IV vii° ii",
                "BenLeon / ii iii V V iii ii I vi",
                "BenLeon / iii iii vi IV ii vi iii vii°",
                "BenLeon / vi V V IV iii vii° I IV",
                "BenLeon / vi ii vi vi vi vii° vii° I",
                "BenLeon / vii° V vii° iii IV vi vii° ii",
                "BenLeon / vii° ii iii vii° V vii° iii IV",
                "BenLeon / IV iii ii ii vi V IV iii",
                "BenLeon / I I iii V V V IV vii°",
                "BenLeon / I ii V ii I vii° I IV",
                "BenLeon / I iii V iii iii V V IV",
                "BenLeon / I iii vi vii° IV ii ii vii°",
                "BenLeon / I vi vi vi ii I I vii°",
                "BenLeon / V IV ii vii° iii I iii V",
                "BenLeon / V vi vi vii° vii° vi vi ii",
                "BenLeon / ii IV vi vii° IV IV ii vi",
                "BenLeon / ii ii vii° ii ii iii vi iii",
                "BenLeon / ii vi V V ii vii° vi iii",
                "BenLeon / iii ii V iii vii° iii vii° vi",
                "BenLeon / vi IV V I vii° I I I",
                "BenLeon / vi I V I iii I IV vii°",
                "BenLeon / vi iii V ii vi iii vi vii°",
                "BenLeon / vi iii iii vii° vii° ii vi vii°",
                "BenLeon / vi iii vii° IV ii V vi IV",
                "BenLeon / vi vi vii° I vi ii vi vii°",
                "BenLeon / vii° I ii V vii° I ii I",
                "BenLeon / vii° vii° iii vii° iii I I I",
                "BenLeon / III III iv III VI III v iv",
                "BenLeon / III III iv VI III VI iv i",
                "BenLeon / III III v iv ii° i III ii°",
                "BenLeon / III VII iv ii° VII ii° v III",
                "BenLeon / III VI v iv iv ii° i ii°",
                "BenLeon / VII VII iv ii° iv i VII iv",
                "BenLeon / VII VI VII ii° i i i i",
                "BenLeon / VII i iv i i v VI VI",
                "BenLeon / VII ii° iv VI III v III v",
                "BenLeon / VII ii° iv i VI ii° III VII",
                "BenLeon / VII iv iv i VII iv VII i",
                "BenLeon / VI VI VI VI v ii° iv i",
                "BenLeon / VI iv i ii° III VI iv i",
                "BenLeon / i ii° v III i VI VII VII",
                "BenLeon / i v v VII v VI v III",
                "BenLeon / ii° i iv ii° VII iv VII III",
                "BenLeon / ii° i v III III VII iv i",
                "BenLeon / iv VI v iv iv VI VI ii°",
                "BenLeon / iv ii° VII ii° i iv VI VI",
                "BenLeon / v v ii° v iv i i III",
                "BenLeon / III VII VII i III VI v v",
                "BenLeon / III i VII III ii° v iv ii°",
                "BenLeon / VII III VI ii° v iv i III",
                "BenLeon / VII VII VII v i iv III III",
                "BenLeon / VII VII ii° III ii° VI VII III",
                "BenLeon / VII VI i VI ii° iv v VI",
                "BenLeon / VII ii° v VI ii° VII III iv",
                "BenLeon / VII iv VI v i ii° i i",
                "BenLeon / VI VII iv i iv i i VI",
                "BenLeon / VI VII v i III i v ii°",
                "BenLeon / VI iv VII ii° iv v ii° VII",
                "BenLeon / ii° III iv i VII i ii° i",
                "BenLeon / ii° VII ii° VII v iv VI i",
                "BenLeon / ii° iv III iv iv VII v VI",
                "BenLeon / ii° v i VI iv iv i v",
                "BenLeon / ii° v v VI ii° iv VI VI",
                "BenLeon / iv VI v v VI ii° VII i",
                "BenLeon / iv ii° VII v VII ii° III iv",
                "BenLeon / iv iv VII ii° VI v VI ii°",
                "BenLeon / v i iv iv VI VII VI ii°",
                "BenLeon / IV I vii° vii° ii iii vi ii",
                "BenLeon / IV iii IV V iii ii V I",
                "BenLeon / IV vi IV iii vi ii vi V",
                "BenLeon / IV vii° IV vii° IV ii iii vii°",
                "BenLeon / I IV vi ii iii IV ii vii°",
                "BenLeon / I iii vi IV V V vi IV",
                "BenLeon / I iii vii° ii IV vi ii ii",
                "BenLeon / I vii° I I V V vi vi",
                "BenLeon / V I I vi vi iii V V",
                "BenLeon / V vi IV vii° ii iii vii° iii",
                "BenLeon / ii IV vi iii V IV vi IV",
                "BenLeon / iii I V I vii° IV I I",
                "BenLeon / iii I iii vii° iii iii ii I",
                "BenLeon / iii ii V vi IV IV ii vi",
                "BenLeon / iii vi IV vi vii° vii° iii vi",
                "BenLeon / vi ii I vii° vii° iii vi V",
                "BenLeon / vi vii° vi ii vii° I I V",
                "BenLeon / vii° IV V vii° vi vii° ii I",
                "BenLeon / vii° ii ii vii° IV I iii ii",
                "BenLeon / vii° vii° ii I V vii° iii ii",
                "BenLeon / IV IV vii° I vii° vii° iii iii",
                "BenLeon / IV I iii I I vii° I vii°",
                "BenLeon / IV V vii° iii I ii iii vii°",
                "BenLeon / IV iii vii° iii vii° IV ii ii",
                "BenLeon / I IV IV vii° I vi vi vii°",
                "BenLeon / I V IV iii I IV vii° vi",
                "BenLeon / I iii ii vi I V I I",
                "BenLeon / V IV iii ii ii ii vii° iii",
                "BenLeon / V IV vi ii IV vi vi I",
                "BenLeon / V I V vii° ii iii IV V",
                "BenLeon / V vi I iii V V iii vii°",
                "BenLeon / ii V V V I vii° I V",
                "BenLeon / ii ii ii IV vi V vii° IV",
                "BenLeon / iii IV vii° V vi iii IV IV",
                "BenLeon / vi I I ii I vi I vii°",
                "BenLeon / vi iii ii IV vii° V V iii",
                "BenLeon / vii° I IV iii IV vii° vii° vi",
                "BenLeon / vii° I IV vi vii° iii IV vii°",
                "BenLeon / vii° ii vi ii iii vii° IV I",
                "BenLeon / vii° ii vii° vii° iii I ii iii",
                "BenLeon / IV I ii ii I vii° ii vi",
                "BenLeon / IV iii ii I V IV V IV",
                "BenLeon / IV vi vii° I vi ii V I",
                "BenLeon / I I vii° IV I V ii IV",
                "BenLeon / I vi vii° vii° vi vi IV vi",
                "BenLeon / V IV I vi IV IV V V",
                "BenLeon / V IV ii IV vi vii° V vii°",
                "BenLeon / V I IV ii iii V V ii",
                "BenLeon / V V IV IV IV iii iii ii",
                "BenLeon / V ii V I V vi ii I",
                "BenLeon / V vi I I iii vii° vii° ii",
                "BenLeon / ii V V I I vii° V ii",
                "BenLeon / ii vi I IV ii IV ii vi",
                "BenLeon / iii ii I V I iii iii vi",
                "BenLeon / vi iii IV ii vi V vi IV",
                "BenLeon / vi vi vii° vii° ii vii° ii iii",
                "BenLeon / vi vii° iii V V I V vi",
                "BenLeon / vii° iii IV I IV vi vii° vii°",
                "BenLeon / vii° vi iii iii V I ii IV",
                "BenLeon / vii° vi iii vii° V vi IV vii°",
                "BenLeon / IV I vii° vii° I I vii° iii",
                "BenLeon / IV vi IV ii iii IV iii V",
                "BenLeon / I IV vii° IV iii IV iii vi",
                "BenLeon / I vi IV V I IV vi iii",
                "BenLeon / V IV I vi V ii IV I",
                "BenLeon / V IV vii° I IV vi I IV",
                "BenLeon / V ii I I I vii° I ii",
                "BenLeon / V iii vi ii iii vii° I ii",
                "BenLeon / V vi iii IV iii vii° I ii",
                "BenLeon / ii I IV I vi iii V vii°",
                "BenLeon / ii V IV vii° V vii° vi V",
                "BenLeon / iii V V ii iii IV V V",
                "BenLeon / iii vii° vii° ii vi iii ii I",
                "BenLeon / vi IV IV V iii I ii IV",
                "BenLeon / vi IV I iii IV ii I IV",
                "BenLeon / vi I ii iii vi vii° iii I",
                "BenLeon / vi I iii vii° vii° vii° I ii",
                "BenLeon / vii° I vi V ii IV vii° iii",
                "BenLeon / vii° vii° I ii IV vii° ii IV",
                "BenLeon / vii° vii° ii ii ii vi ii vi",
                "BenLeon / IV ii I vii° IV iii vi IV",
                "BenLeon / IV iii ii vii° I V ii iii",
                "BenLeon / IV vii° V V vii° vi V V",
                "BenLeon / I IV I I iii vi V V",
                "BenLeon / I IV vii° ii I I ii ii",
                "BenLeon / I iii IV I vii° ii iii vi",
                "BenLeon / I vi vi ii ii V ii iii",
                "BenLeon / I vii° V V I V vi vi",
                "BenLeon / V I vii° V I iii vi iii",
                "BenLeon / V ii V iii I vi vi vii°",
                "BenLeon / V vii° iii vi ii V ii I",
                "BenLeon / ii I vii° ii iii iii iii vi",
                "BenLeon / ii iii IV I I iii ii I",
                "BenLeon / ii vii° vi ii ii I IV V",
                "BenLeon / iii ii iii V vii° V V I",
                "BenLeon / vi ii iii iii V IV V V",
                "BenLeon / vi vii° V V V I ii iii",
                "BenLeon / vii° I V vi IV V vii° vi",
                "BenLeon / vii° I vii° iii vii° I V vi",
                "BenLeon / vii° V IV I I ii vii° IV",
                "BenLeon / III VII III III VII ii° v III",
                "BenLeon / III i VII VI iv i VI i",
                "BenLeon / III i VII ii° i i VII VII",
                "BenLeon / III i iv ii° v III VI ii°",
                "BenLeon / VII III i i i v iv VII",
                "BenLeon / VII VI iv III VII VI iv ii°",
                "BenLeon / VI iv v i VII VI III v",
                "BenLeon / i III III i ii° III iv v",
                "BenLeon / i VI ii° ii° i VI ii° iv",
                "BenLeon / i i iv VI v VI III iv",
                "BenLeon / ii° III i iv VI ii° III VII",
                "BenLeon / ii° III iv i III i i VI",
                "BenLeon / ii° VI VI III VI ii° VI VII",
                "BenLeon / iv VI III i VII VII ii° iv",
                "BenLeon / iv VI iv ii° ii° v VII ii°",
                "BenLeon / iv ii° VI III iv ii° i v",
                "BenLeon / iv v VII VII III i v v",
                "BenLeon / iv v v i v i i ii°",
                "BenLeon / v III VI v i III i iv",
                "BenLeon / v i iv VII iv v VII iv",
                "BenLeon / IV ii IV vii° I IV IV ii",
                "BenLeon / IV vii° I IV iii iii I vii°",
                "BenLeon / I I IV IV V ii vii° vi",
                "BenLeon / I I IV vii° V ii IV iii",
                "BenLeon / I vi vii° ii vii° ii vi iii",
                "BenLeon / ii IV ii ii vii° IV ii ii",
                "BenLeon / ii I iii V vi vi IV vi",
                "BenLeon / ii I iii iii IV iii vi I",
                "BenLeon / ii V IV V vii° ii vii° V",
                "BenLeon / ii V I I V V vii° V",
                "BenLeon / ii vi ii iii vi ii ii I",
                "BenLeon / ii vi vii° vii° vii° vii° I vi",
                "BenLeon / iii I V ii vi ii iii ii",
                "BenLeon / iii ii IV ii iii IV ii IV",
                "BenLeon / iii vii° ii vi V vii° I vi",
                "BenLeon / vi IV V ii iii IV iii vi",
                "BenLeon / vi V ii vi IV vi vi iii",
                "BenLeon / vi ii IV I iii IV IV iii",
                "BenLeon / vii° ii vi vii° iii iii ii V",
                "BenLeon / vii° vii° iii IV ii vi iii vii°",
                "BenLeon / IV I vii° vii° V V IV V",
                "BenLeon / IV iii ii V IV I vi V",
                "BenLeon / IV vii° IV V vi IV iii IV",
                "BenLeon / I I I I IV I IV iii",
                "BenLeon / I I ii vi vii° ii IV vi",
                "BenLeon / I V I vi iii V IV ii",
                "BenLeon / I ii IV vi iii ii I ii",
                "BenLeon / I ii vii° IV ii ii V vii°",
                "BenLeon / I ii vii° vi IV iii I IV",
                "BenLeon / I vii° vii° vii° ii IV ii IV",
                "BenLeon / V I iii V vii° I vii° V",
                "BenLeon / V vii° V vi vii° vi I I",
                "BenLeon / ii IV IV vii° V iii iii iii",
                "BenLeon / ii IV V IV ii ii V iii",
                "BenLeon / ii I vi ii I vi I I",
                "BenLeon / ii ii vii° ii vi vii° I V",
                "BenLeon / ii iii I iii iii vi iii ii",
                "BenLeon / ii vi IV IV IV iii IV I",
                "BenLeon / vi V vii° I V I iii IV",
                "BenLeon / vii° IV V vi ii iii IV ii",
                "BenLeon / III III III VI v VII VI VI",
                "BenLeon / III III VII i VII VI VI ii°",
                "BenLeon / VII iv ii° VI v i VII iv",
                "BenLeon / VII v v ii° iv VII VII ii°",
                "BenLeon / VI iv v i v ii° VI v",
                "BenLeon / VI v III III v i i ii°",
                "BenLeon / i III VI v VII ii° ii° iv",
                "BenLeon / i i VI v i v ii° i",
                "BenLeon / i i iv VII iv i ii° III",
                "BenLeon / ii° VI i ii° III III i v",
                "BenLeon / ii° VI v i VII VII ii° VI",
                "BenLeon / ii° ii° VI ii° ii° ii° VI v",
                "BenLeon / ii° ii° i i v iv ii° VII",
                "BenLeon / ii° v ii° i ii° v III v",
                "BenLeon / iv VII i VII ii° ii° VII III",
                "BenLeon / iv VI VII ii° iv i VII III",
                "BenLeon / iv ii° VI iv iv III v VI",
                "BenLeon / iv iv ii° iv VII v VI i",
                "BenLeon / iv v i v v III i ii°",
                "BenLeon / v III ii° v VI VI v VI",
                "BenLeon / III III iv ii° VI i i v",
                "BenLeon / III VII v VII VI i v VII",
                "BenLeon / III i i v iv ii° III VI",
                "BenLeon / VII VII III iv ii° i i III",
                "BenLeon / VII VI ii° iv III VII III ii°",
                "BenLeon / VII i III iv VI v v ii°",
                "BenLeon / VII i VI iv VI iv VII III",
                "BenLeon / VII ii° iv III v iv v ii°",
                "BenLeon / VII v ii° ii° v III ii° VII",
                "BenLeon / VI VII III ii° ii° i III iv",
                "BenLeon / VI iv ii° VII VI VI VII iv",
                "BenLeon / VI v i i III ii° v VI",
                "BenLeon / i III VI ii° iv i VII ii°",
                "BenLeon / i III v iv ii° VII VII i",
                "BenLeon / ii° III v ii° VI i III III",
                "BenLeon / ii° iv i VI i VII ii° v",
                "BenLeon / iv VII ii° iv III ii° v ii°",
                "BenLeon / iv iv i VI i VI VII VII",
                "BenLeon / iv iv i iv i III v VII",
                "BenLeon / iv iv v i iv ii° VII VII",
                "BenLeon / IV vi IV iii I V I iii",
                "BenLeon / IV vii° vi iii IV IV iii V",
                "BenLeon / I IV I IV V IV vi ii",
                "BenLeon / I I V IV vii° vii° I vi",
                "BenLeon / I I V vii° vii° vi vi ii",
                "BenLeon / I iii V I vi vii° iii V",
                "BenLeon / I vi vi vii° I I ii IV",
                "BenLeon / V ii I V V IV ii vi",
                "BenLeon / V vi ii vi V iii vi I",
                "BenLeon / V vii° iii vi V IV IV ii",
                "BenLeon / ii vi V ii vi ii V V",
                "BenLeon / ii vii° IV V ii ii vii° I",
                "BenLeon / iii V vi vii° V vi I ii",
                "BenLeon / iii ii iii vi ii iii iii I",
                "BenLeon / iii ii vii° iii IV V I iii",
                "BenLeon / iii vii° vii° ii vi I vi iii",
                "BenLeon / vii° I vii° V IV iii ii vi",
                "BenLeon / vii° V I V iii V ii V",
                "BenLeon / vii° vi vii° IV iii ii IV ii",
                "BenLeon / vii° vii° ii V iii ii I vi",
                "BenLeon / IV I ii ii IV I iii IV",
                "BenLeon / IV iii vii° ii vii° I ii vi",
                "BenLeon / IV vi I iii IV I vi V",
                "BenLeon / I V ii vii° vii° vii° iii iii",
                "BenLeon / I V vi ii iii vi vi V",
                "BenLeon / I iii iii vii° I vi I V",
                "BenLeon / V vi iii vi iii vii° iii vii°",
                "BenLeon / ii IV ii V IV V I ii",
                "BenLeon / ii vi ii vii° V I ii V",
                "BenLeon / iii I iii I V IV iii I",
                "BenLeon / iii I vii° vii° vi V I vii°",
                "BenLeon / iii vii° vi iii IV ii ii IV",
                "BenLeon / vi V iii IV iii IV I vii°",
                "BenLeon / vi ii vi iii V vii° V I",
                "BenLeon / vi ii vi vii° I iii vi iii",
                "BenLeon / vi vi I vii° vi I vii° ii",
                "BenLeon / vi vii° I V vii° IV vii° vii°",
                "BenLeon / vii° IV V V iii IV V iii",
                "BenLeon / vii° I I IV ii V iii vii°",
                "BenLeon / vii° V vii° iii ii iii vi ii",
                "BenLeon / IV ii ii vi vi iii iii vi",
                "BenLeon / I V IV vii° iii V IV ii",
                "BenLeon / I ii I vii° vi iii ii V",
                "BenLeon / I ii V vii° IV V V V",
                "BenLeon / I ii iii V iii vi vii° V",
                "BenLeon / I vi vi I I V vi vi",
                "BenLeon / V I ii iii V vi vi V",
                "BenLeon / V vii° IV I iii I iii I",
                "BenLeon / ii I vii° V V V iii vii°",
                "BenLeon / ii ii I IV I I I vi",
                "BenLeon / ii vi ii ii ii ii vii° ii",
                "BenLeon / ii vii° ii iii vii° iii ii V",
                "BenLeon / iii IV I iii I iii V vii°",
                "BenLeon / iii iii V iii IV IV V vii°",
                "BenLeon / iii iii vii° I iii vi IV vi",
                "BenLeon / iii iii vii° V vi ii V V",
                "BenLeon / iii vii° IV I vi IV vii° vi",
                "BenLeon / vi I I vii° V vi ii iii",
                "BenLeon / vi iii IV iii iii V I iii",
                "BenLeon / vii° vii° V IV V iii vi I",
                "BenLeon / IV I ii vii° V vii° vii° vii°",
                "BenLeon / IV vii° vi iii iii vi V vii°",
                "BenLeon / IV vii° vii° vi V vi V V",
                "BenLeon / I IV vii° iii V vi ii iii",
                "BenLeon / V ii ii iii ii IV V IV",
                "BenLeon / V vii° V ii V IV V V",
                "BenLeon / ii IV IV IV V vii° IV IV",
                "BenLeon / ii V vi vi V IV IV I",
                "BenLeon / ii V vii° V vi V iii iii",
                "BenLeon / ii ii I vii° ii IV vi IV",
                "BenLeon / iii I ii IV I vi vii° V",
                "BenLeon / iii iii V iii I vi IV iii",
                "BenLeon / iii vi IV I V iii vi vi",
                "BenLeon / iii vii° V IV vi iii V IV",
                "BenLeon / vi vi IV vii° V iii I ii",
                "BenLeon / vi vi I V V iii ii vi",
                "BenLeon / vi vi vi I vii° IV vii° vi",
                "BenLeon / vii° iii IV vii° ii I ii V",
                "BenLeon / vii° vi ii IV IV vii° I V",
                "BenLeon / vii° vii° V I iii vii° ii IV",
                "BenLeon / IV IV ii ii ii vii° IV I",
                "BenLeon / IV I vii° IV V IV vii° vi",
                "BenLeon / IV ii vii° V iii ii vi I",
                "BenLeon / I vii° vii° IV V vi ii IV",
                "BenLeon / V iii IV I V I iii vii°",
                "BenLeon / V vii° ii vii° ii ii iii iii",
                "BenLeon / ii V iii ii I vi V IV",
                "BenLeon / ii V vi ii V vi IV V",
                "BenLeon / ii ii iii vi vii° IV vi vi",
                "BenLeon / ii iii V ii IV vii° vii° ii",
                "BenLeon / ii vii° ii V I vii° vi ii",
                "BenLeon / iii iii V iii IV V I ii",
                "BenLeon / iii iii ii IV IV vi IV ii",
                "BenLeon / vi ii IV IV iii V ii vii°",
                "BenLeon / vi ii iii I ii iii vii° vi",
                "BenLeon / vi vi I vii° IV IV vii° vii°",
                "BenLeon / vi vii° vi iii V IV IV V",
                "BenLeon / vii° IV I ii V ii V IV",
                "BenLeon / vii° iii iii iii IV V V vi",
                "BenLeon / vii° iii vi vii° IV vii° vi vi",
                "BenLeon / III VII iv III VI ii° III i",
                "BenLeon / III VI i VI v v VII ii°",
                "BenLeon / III ii° iv iv v III VII VI",
                "BenLeon / III iv iv VI ii° v ii° ii°",
                "BenLeon / III v i v v v III VII",
                "BenLeon / III v ii° v VII v v VI",
                "BenLeon / VII i III i III ii° VI iv",
                "BenLeon / VI i ii° v VII v VI v",
                "BenLeon / VI ii° VI VI iv iv VII v",
                "BenLeon / VI v i iv iv VI VI VII",
                "BenLeon / ii° VI ii° iv i VI ii° v",
                "BenLeon / ii° ii° i ii° VI i VI i",
                "BenLeon / iv III i VII VI ii° iv i",
                "BenLeon / iv v III III III iv v iv",
                "BenLeon / iv v ii° v ii° v i VII",
                "BenLeon / v VII i ii° i VI v iv",
                "BenLeon / v VII ii° VII iv iv VI VII",
                "BenLeon / v VI i ii° III III III III",
                "BenLeon / v i III iv v III III ii°",
                "BenLeon / v v VII ii° VII III III ii°",
                "BenLeon / IV I V vii° ii vi IV V",
                "BenLeon / IV vi vi I vi I vii° V",
                "BenLeon / IV vii° I I iii vi I iii",
                "BenLeon / I IV vii° I IV V I ii",
                "BenLeon / I I vii° iii iii vi ii V",
                "BenLeon / I iii vii° vi iii V IV I",
                "BenLeon / I vii° iii ii vi vii° ii I",
                "BenLeon / V V vii° vii° iii IV vi vii°",
                "BenLeon / V iii vi V IV IV vi IV",
                "BenLeon / ii ii ii IV iii I ii iii",
                "BenLeon / iii V V ii ii vi vi iii",
                "BenLeon / iii iii V V vii° iii V iii",
                "BenLeon / iii vi I vii° vii° ii V I",
                "BenLeon / vi IV vi I I I vi V",
                "BenLeon / vi V I V ii V V I",
                "BenLeon / vi V vi V V ii iii V",
                "BenLeon / vi iii ii ii iii I iii vi",
                "BenLeon / vi vi V I ii ii I IV",
                "BenLeon / vii° vi IV vi vi I vii° IV",
                "BenLeon / vii° vii° iii vi vi vii° vii° I",
                "BenLeon / IV I vi I I ii IV iii",
                "BenLeon / IV V V I ii V V vi",
                "BenLeon / IV ii ii ii vii° vii° iii vi",
                "BenLeon / IV vi vii° V IV ii IV vii°",
                "BenLeon / I IV IV ii V vii° V iii",
                "BenLeon / I IV V IV IV IV ii I",
                "BenLeon / V vi IV ii vi ii vii° vii°",
                "BenLeon / ii ii V vi I vii° vi I",
                "BenLeon / ii vi vii° iii iii V ii vi",
                "BenLeon / iii I V I ii vi IV IV",
                "BenLeon / iii V I iii iii vii° vii° vii°",
                "BenLeon / iii V vi I V ii ii I",
                "BenLeon / iii ii vii° IV vii° I I iii",
                "BenLeon / iii vi IV V vii° iii iii vi",
                "BenLeon / iii vii° ii vii° ii V vi ii",
                "BenLeon / vi vi I vi vii° vi I I",
                "BenLeon / vi vii° iii V iii I iii V",
                "BenLeon / vi vii° iii vii° V IV IV vii°",
                "BenLeon / vii° iii V V vi vii° iii ii",
                "BenLeon / vii° vii° iii ii vii° IV vii° vii°",
                "BenLeon / III VII III ii° III iv VI i",
                "BenLeon / III VII VII v v III III v",
                "BenLeon / III VI VII i VII VII III VI",
                "BenLeon / VII VI III III VI VI iv iv",
                "BenLeon / VII iv VI VI VI iv ii° VI",
                "BenLeon / VI VII VI VII iv i ii° VI",
                "BenLeon / VI VI VII ii° iv v III ii°",
                "BenLeon / VI i ii° i VII iv v ii°",
                "BenLeon / VI v VII III i III VII VII",
                "BenLeon / i III VI i ii° v i VII",
                "BenLeon / i VI ii° VI VII III VI VI",
                "BenLeon / i i v VI i VI v i",
                "BenLeon / ii° VII III VII v iv v iv",
                "BenLeon / ii° v v ii° VII VI v III",
                "BenLeon / iv III VI i VII i III v",
                "BenLeon / iv v III III VII i VI iv",
                "BenLeon / v III VII VI v VII iv i",
                "BenLeon / v III v III i i VI III",
                "BenLeon / v VI III ii° VII VII v iv",
                "BenLeon / v VI VI iv i ii° v III",
                "BenLeon / III VI VI v v III v III",
                "BenLeon / III VI i i ii° III i ii°",
                "BenLeon / III VI iv v iv VI VI VII",
                "BenLeon / III iv VI ii° iv ii° iv i",
                "BenLeon / III v iv v v i VII VI",
                "BenLeon / VII VI III iv iv ii° i VII",
                "BenLeon / VII ii° iv v III iv III i",
                "BenLeon / VII iv III VI ii° iv i iv",
                "BenLeon / VI VII v VII III iv iv VII",
                "BenLeon / VI ii° ii° VI III i i ii°",
                "BenLeon / VI ii° iv i ii° VI ii° i",
                "BenLeon / i iv iv ii° ii° iv III ii°",
                "BenLeon / i iv v v iv v ii° v",
                "BenLeon / ii° VI v VII VII III v ii°",
                "BenLeon / iv ii° III VII i ii° ii° VI",
                "BenLeon / iv iv VI v v VI ii° VII",
                "BenLeon / v VII iv i iv ii° v III",
                "BenLeon / v VI ii° v v v ii° VII",
                "BenLeon / v ii° III VI iv v ii° VII",
                "BenLeon / v v iv v iv ii° ii° iv",
                "BenLeon / IV IV V V vi vii° iii vii°",
                "BenLeon / IV V V iii V I vii° V",
                "BenLeon / IV ii vii° ii V V vii° vi",
                "BenLeon / IV vi iii iii IV iii IV vi",
                "BenLeon / I IV vi vi ii ii iii I",
                "BenLeon / I iii I ii vi vi vi V",
                "BenLeon / I vi V V vi IV IV I",
                "BenLeon / V ii IV ii IV I vii° iii",
                "BenLeon / V vii° vii° vi vii° iii vi I",
                "BenLeon / ii I I V iii V I vii°",
                "BenLeon / ii V I vii° ii ii iii IV",
                "BenLeon / ii V ii vi vii° ii vii° IV",
                "BenLeon / ii vi vii° vi vii° V IV vi",
                "BenLeon / ii vii° ii ii V IV iii ii",
                "BenLeon / iii iii IV vii° IV vi iii V",
                "BenLeon / iii iii I IV iii ii ii ii",
                "BenLeon / vi V iii vi IV iii V I",
                "BenLeon / vi vii° vi vii° ii V I iii",
                "BenLeon / vii° I vi vii° vi V V I",
                "BenLeon / vii° iii ii ii ii I V vi",
                "BenLeon / IV IV iii vii° V IV I iii",
                "BenLeon / IV ii ii iii IV I vi ii",
                "BenLeon / IV iii vi ii IV IV IV vii°",
                "BenLeon / IV vii° ii I iii vii° iii ii",
                "BenLeon / IV vii° vi vii° I V vii° vii°",
                "BenLeon / IV vii° vii° IV V I I I",
                "BenLeon / I IV vi V IV V iii V",
                "BenLeon / I I vii° iii vii° IV vi ii",
                "BenLeon / I V ii IV IV vi vi vi",
                "BenLeon / I ii ii V I ii V V",
                "BenLeon / I iii vi vi V ii V iii",
                "BenLeon / V ii I iii ii ii iii IV",
                "BenLeon / ii V vii° vi ii vii° vi V",
                "BenLeon / ii ii V IV V vii° V vii°",
                "BenLeon / iii ii V IV iii ii I vii°",
                "BenLeon / iii iii iii I V vii° ii I",
                "BenLeon / iii vii° ii vi iii I ii I",
                "BenLeon / vi IV vi IV vii° ii vii° IV",
                "BenLeon / vi I vi iii V V iii IV",
                "BenLeon / vii° I vii° vii° vii° vii° IV iii",
                "BenLeon / IV V I iii V iii vi ii",
                "BenLeon / IV iii vi IV ii vii° I ii",
                "BenLeon / IV vii° V V I vii° ii vi",
                "BenLeon / I IV vii° iii I iii iii ii",
                "BenLeon / I I ii iii I vi V I",
                "BenLeon / I V vi IV IV IV V vii°",
                "BenLeon / I ii vii° IV iii ii vi iii",
                "BenLeon / I ii vii° iii V V IV ii",
                "BenLeon / V I IV iii vii° iii iii vi",
                "BenLeon / V I ii I vi I vi vi",
                "BenLeon / V V ii vi iii iii I iii",
                "BenLeon / V ii vi iii ii V ii vii°",
                "BenLeon / V iii V IV iii IV vii° ii",
                "BenLeon / V iii iii vi V V vi vi",
                "BenLeon / ii V V ii ii iii vii° ii",
                "BenLeon / iii V vi vii° I V vi IV",
                "BenLeon / iii ii vi I iii vi IV iii",
                "BenLeon / vi ii vii° vii° iii ii iii IV",
                "BenLeon / vii° I I IV vi V I IV",
                "BenLeon / vii° iii vi iii V V IV ii",
                "BenLeon / IV I I iii I I vi V",
                "BenLeon / IV vi I I V ii ii vi",
                "BenLeon / IV vi I vi V V vi V",
                "BenLeon / I IV iii V ii iii vii° IV",
                "BenLeon / I I I vii° I I I I",
                "BenLeon / I I ii IV I IV ii vii°",
                "BenLeon / I V I I I vii° IV I",
                "BenLeon / I V iii vi iii vii° ii vi",
                "BenLeon / V I ii I vi vii° I vii°",
                "BenLeon / V V vii° vii° vi ii iii ii",
                "BenLeon / ii I iii iii IV vii° V vi",
                "BenLeon / ii vii° V V vi V I vi",
                "BenLeon / iii IV IV IV I iii ii I",
                "BenLeon / iii I V I iii ii vi IV",
                "BenLeon / iii I vi IV I I I vi",
                "BenLeon / iii ii IV I vii° iii I vii°",
                "BenLeon / iii vi IV vi IV vi vi ii",
                "BenLeon / iii vi I vi iii vi iii IV",
                "BenLeon / vi IV V IV vii° I IV I",
                "BenLeon / vi iii ii I vii° iii ii iii",
                "BenLeon / IV IV I ii vi vii° vi iii",
                "BenLeon / IV V V I vi ii ii I",
                "BenLeon / IV V V V iii I ii vii°",
                "BenLeon / IV iii vii° V I vii° I I",
                "BenLeon / I I I iii I V iii V",
                "BenLeon / I I vi ii vii° I V IV",
                "BenLeon / I V vii° I vii° IV vi IV",
                "BenLeon / I ii I V IV ii V vi",
                "BenLeon / I vi vi I IV ii I ii",
                "BenLeon / V vii° V IV iii vi I I",
                "BenLeon / ii I vi vi vii° I iii IV",
                "BenLeon / iii vii° iii I IV vi vi IV",
                "BenLeon / vi IV ii iii I I ii vi",
                "BenLeon / vi I iii vi I vii° ii V",
                "BenLeon / vi V vii° V I V iii I",
                "BenLeon / vi iii IV iii ii I I I",
                "BenLeon / vii° I vii° IV iii IV ii IV",
                "BenLeon / vii° V ii iii IV iii ii vi",
                "BenLeon / vii° vi vi vi vi iii ii vi",
                "BenLeon / vii° vii° iii I V vii° V vii°",
                "BenLeon / IV ii vi vii° I IV IV vii°",
                "BenLeon / I IV iii vi vii° ii I vii°",
                "BenLeon / I ii V iii I I I IV",
                "BenLeon / I iii ii V I IV I V",
                "BenLeon / I vi iii IV I I ii iii",
                "BenLeon / I vii° I ii I I ii V",
                "BenLeon / V V IV vi iii V vi vii°",
                "BenLeon / ii ii vi vii° I iii vii° vii°",
                "BenLeon / iii IV ii V IV I I I",
                "BenLeon / iii I vi vi I vii° ii I",
                "BenLeon / iii iii ii I IV vii° I vii°",
                "BenLeon / iii vii° ii I vi IV IV iii",
                "BenLeon / vi IV I IV V I I I",
                "BenLeon / vi ii iii ii iii I I I",
                "BenLeon / vii° IV vi vi vi vi IV I",
                "BenLeon / vii° V I ii ii V ii vii°",
                "BenLeon / vii° V ii I I I I I",
                "BenLeon / vii° ii IV vi I I vi V",
                "BenLeon / vii° iii IV vi iii vi I I",
                "BenLeon / vii° vi I IV iii vii° I I",
                "BenLeon / IV V vii° V IV I ii ii",
                "BenLeon / I I V ii V vi IV vi",
                "BenLeon / I V I I vi vi I I",
                "BenLeon / I V I I vii° I I I",
                "BenLeon / I V vii° IV V ii vi V",
                "BenLeon / V I iii IV iii IV ii vi",
                "BenLeon / V ii IV vii° I iii I V",
                "BenLeon / V vi I iii I I I vii°",
                "BenLeon / ii I I IV V I I ii",
                "BenLeon / ii I I I V I iii IV",
                "BenLeon / ii V V IV vii° iii iii I",
                "BenLeon / ii iii IV V vi vi iii vii°",
                "BenLeon / iii I I iii IV vi vi iii",
                "BenLeon / iii vi IV V I vii° vii° vi",
                "BenLeon / iii vi iii V vii° ii vii° vi",
                "BenLeon / vi vi iii ii ii I ii vi",
                "BenLeon / vii° I I ii V iii iii iii",
                "BenLeon / vii° iii IV V I I IV IV",
                "BenLeon / vii° iii iii I V vi I vi",
                "BenLeon / vii° vii° iii V ii I ii V",
                "BenLeon / IV I V vii° I IV iii IV",
                "BenLeon / IV V iii I vi vii° I IV",
                "BenLeon / IV ii I ii vi IV iii I",
                "BenLeon / IV vi I vii° I V I ii",
                "BenLeon / I I IV vi vii° ii IV ii",
                "BenLeon / I I I ii vi iii ii I",
                "BenLeon / I iii I I iii ii V IV",
                "BenLeon / I iii V I I I I iii",
                "BenLeon / V I ii IV vi ii V I",
                "BenLeon / V ii I iii IV vii° V ii",
                "BenLeon / ii IV vii° iii vii° IV vii° vi",
                "BenLeon / ii vii° ii iii vi vii° IV ii",
                "BenLeon / iii ii ii I vii° V V IV",
                "BenLeon / iii vii° IV V vii° V I ii",
                "BenLeon / vi iii iii I iii vii° vi I",
                "BenLeon / vi vii° I I vii° IV I V",
                "BenLeon / vi vii° V ii iii iii ii IV",
                "BenLeon / vii° IV I ii ii iii vi I",
                "BenLeon / vii° I I IV ii I I ii",
                "BenLeon / vii° I ii I I vi IV I",
                "BenLeon / IV IV IV vi vii° I IV vi",
                "BenLeon / IV I IV V IV vi ii vi",
                "BenLeon / IV I I ii iii I I I",
                "BenLeon / IV ii iii vi I IV vi iii",
                "BenLeon / IV ii vi V ii iii V iii",
                "BenLeon / IV vi ii I I V iii vii°",
                "BenLeon / IV vii° I iii I vi vii° I",
                "BenLeon / IV vii° V I IV IV I ii",
                "BenLeon / I IV I I V iii vi iii",
                "BenLeon / I I iii ii IV vi I IV",
                "BenLeon / I V vi I I I ii I",
                "BenLeon / I ii I V IV I vii° V",
                "BenLeon / I ii I ii ii I I IV",
                "BenLeon / I ii I vii° I vii° ii IV",
                "BenLeon / I iii IV vii° vii° IV I IV",
                "BenLeon / I iii V I V iii I V",
                "BenLeon / I vi I I iii I I vi",
                "BenLeon / I vii° iii vi ii ii I iii",
                "BenLeon / I vii° vi V I iii IV vii°",
                "BenLeon / V IV ii ii iii vi ii ii",
                "BenLeon / V vi V IV I I iii iii",
                "BenLeon / V vii° I ii IV IV I vii°",
                "BenLeon / ii I I I vii° V vii° iii",
                "BenLeon / ii I I vi I vii° I IV",
                "BenLeon / ii I iii ii IV vi I iii",
                "BenLeon / ii iii I I I IV I IV",
                "BenLeon / ii iii ii ii I I I iii",
                "BenLeon / iii V V vi ii iii V ii",
                "BenLeon / iii vi iii vi I I iii iii",
                "BenLeon / iii vii° I vi vii° vi I IV",
                "BenLeon / vi IV iii vi vii° I IV iii",
                "BenLeon / vi I V iii I IV V vi",
                "BenLeon / vi iii ii I IV iii V vi",
                "BenLeon / vii° IV ii I vi vii° vi I",
                "BenLeon / vii° I IV vi I iii V IV",
                "BenLeon / vii° I V V ii iii I I",
                "BenLeon / vii° V ii ii iii vi vi vii°",
                "BenLeon / vii° V vii° IV vi IV I vii°",
                "BenLeon / vii° ii I iii IV ii I iii",
                "BenLeon / vii° vii° I IV iii iii vi I",
                "BenLeon / IV IV I vi vi vi IV vi",
                "BenLeon / IV ii I I I ii ii vii°",
                "BenLeon / IV iii I IV vi vi I I",
                "BenLeon / IV iii iii iii ii V vii° I",
                "BenLeon / IV vi I I iii ii vi vi",
                "BenLeon / IV vii° V iii ii I vi iii",
                "BenLeon / I IV iii IV iii IV ii V",
                "BenLeon / I I ii ii vii° iii vi iii",
                "BenLeon / I V V I I I I I",
                "BenLeon / I vi IV iii IV I I I",
                "BenLeon / V I ii ii ii iii I ii",
                "BenLeon / V I vi IV IV I ii IV",
                "BenLeon / V I vi iii I V I V",
                "BenLeon / V V IV IV I vi I I",
                "BenLeon / ii IV vii° vii° I ii vi I",
                "BenLeon / ii I I iii vii° ii ii iii",
                "BenLeon / iii ii IV V I vii° I vii°",
                "BenLeon / iii ii IV iii vi vi V vii°",
                "BenLeon / iii iii I V vi iii I vii°",
                "BenLeon / vi I vi V V I vii° vii°",
                "BenLeon / IV I IV I IV IV iii V",
                "BenLeon / I I IV ii V iii I V",
                "BenLeon / I I V V V iii V ii",
                "BenLeon / I V I V iii I V V",
                "BenLeon / I V iii I I vi vii° vii°",
                "BenLeon / I V vii° I iii ii vi vi",
                "BenLeon / I ii I IV ii I IV iii",
                "BenLeon / I vi I ii iii vi vi ii",
                "BenLeon / I vii° V vii° I I vii° ii",
                "BenLeon / V I iii ii I I ii IV",
                "BenLeon / ii I vii° I vii° I IV iii",
                "BenLeon / ii ii vii° vii° IV vii° iii vii°",
                "BenLeon / iii IV vii° I I vii° V iii",
                "BenLeon / iii I iii IV ii ii vi V",
                "BenLeon / iii I vi V iii IV ii ii",
                "BenLeon / iii ii I I ii vi I IV",
                "BenLeon / iii vii° I vii° V IV vii° vi",
                "BenLeon / vi I I vi ii I iii I",
                "BenLeon / vi I vi vii° V IV iii I",
                "BenLeon / vi ii V ii vii° I vi vii°",
                "BenLeon / IV V I IV vi ii vii° vi",
                "BenLeon / IV ii vi V vii° I iii ii",
                "BenLeon / IV iii I I iii vii° I I",
                "BenLeon / IV vii° IV V I ii vi I",
                "BenLeon / I ii I iii V vi V vii°",
                "BenLeon / I vi I iii vii° vii° vii° V",
                "BenLeon / V IV V iii iii ii vii° V",
                "BenLeon / V I ii I I vi vii° IV",
                "BenLeon / ii IV IV iii ii I V V",
                "BenLeon / ii IV I IV IV I vii° IV",
                "BenLeon / ii IV I I IV ii ii vii°",
                "BenLeon / ii I vii° vii° iii I IV I",
                "BenLeon / ii ii vii° vii° ii ii vii° vi",
                "BenLeon / ii vii° vi I I I vii° vii°",
                "BenLeon / iii vii° ii I vii° iii vii° IV",
                "BenLeon / vi IV I I V vi I iii",
                "BenLeon / vi I ii iii I vi vii° iii",
                "BenLeon / vi V iii vi vii° ii IV ii",
                "BenLeon / vi V vi vi vi vi I V",
                "BenLeon / vi vii° ii I vii° vii° vi vii°",
                "BenLeon / IV IV iii vi I IV I iii",
                "BenLeon / IV I IV vi V IV I vi",
                "BenLeon / I I I IV ii ii iii V",
                "BenLeon / I I iii I iii IV vii° V",
                "BenLeon / I V IV ii IV vii° I I",
                "BenLeon / I vi IV V IV I ii iii",
                "BenLeon / I vi iii ii I IV ii iii",
                "BenLeon / V IV vi V iii IV I V",
                "BenLeon / V V iii IV I vii° vi iii",
                "BenLeon / V V vi ii iii I I I",
                "BenLeon / V vi ii I IV V V V",
                "BenLeon / ii I V I I IV iii IV",
                "BenLeon / ii vi vii° vi I IV vii° vi",
                "BenLeon / iii vii° iii I iii vi iii I",
                "BenLeon / iii vii° vii° iii I IV vi V",
                "BenLeon / vi I ii I I IV iii V",
                "BenLeon / vi vi V vii° vii° vi vi ii",
                "BenLeon / vii° I V IV IV vii° vi ii",
                "BenLeon / vii° iii IV vi I vi vii° vi",
                "BenLeon / vii° iii ii vi iii I I I",
                "BenLeon / IV I I vi I vi iii iii",
                "BenLeon / IV I ii vii° IV iii I vi",
                "BenLeon / IV vi vi ii ii vi V iii",
                "BenLeon / IV vii° ii vii° IV V I vi",
                "BenLeon / IV vii° vii° V IV ii iii I",
                "BenLeon / I IV ii ii ii I vii° ii",
                "BenLeon / I I iii iii vi vii° I IV",
                "BenLeon / I V IV iii vii° vi V V",
                "BenLeon / I ii IV ii iii vii° vi iii",
                "BenLeon / V I iii V vi V iii V",
                "BenLeon / V vii° I ii I I I vi",
                "BenLeon / V vii° vi ii iii I iii vii°",
                "BenLeon / ii I IV vii° I IV vii° vi",
                "BenLeon / iii IV ii vi V IV I I",
                "BenLeon / iii vi vii° vi vii° I ii vii°",
                "BenLeon / iii vii° vi ii I iii ii I",
                "BenLeon / vi I vii° ii ii V iii vi",
                "BenLeon / vi vii° V ii IV I ii I",
                "BenLeon / vii° V vii° V IV V IV ii",
                "BenLeon / vii° iii I iii V vii° ii IV",
                "BenLeon / IV I vii° V ii iii ii ii",
                "BenLeon / IV ii I ii I ii ii vii°",
                "BenLeon / IV iii iii vi ii I IV ii",
                "BenLeon / I I I vii° ii iii I I",
                "BenLeon / I I vii° iii iii IV IV I",
                "BenLeon / I V ii vi IV I ii I",
                "BenLeon / I V vi V I ii I IV",
                "BenLeon / I ii IV I V I I vii°",
                "BenLeon / I iii IV I vi I V IV",
                "BenLeon / I vii° IV vi I I iii ii",
                "BenLeon / I vii° V vi V vii° vi iii",
                "BenLeon / V IV V vii° ii vii° vi ii",
                "BenLeon / V I iii vii° V vii° vi vii°",
                "BenLeon / V I vi V IV ii ii ii",
                "BenLeon / ii IV ii I iii IV IV I",
                "BenLeon / ii iii iii iii iii vi V iii",
                "BenLeon / iii IV iii vii° IV iii IV I",
                "BenLeon / iii V vi iii I iii V I",
                "BenLeon / vi V I I iii ii iii ii",
                "BenLeon / vi vi vii° vii° vii° iii V iii",
                "BenLeon / IV V ii vi I vi iii I",
                "BenLeon / IV iii vi I IV V ii iii",
                "BenLeon / I I iii vi iii vii° vi ii",
                "BenLeon / I V I ii I vii° V ii",
                "BenLeon / I V V vi iii V vi ii",
                "BenLeon / I ii V I I I IV I",
                "BenLeon / I ii ii iii I IV IV iii",
                "BenLeon / I vii° I iii vii° V vi I",
                "BenLeon / V I V iii iii iii ii I",
                "BenLeon / V vi V iii V I vi iii",
                "BenLeon / V vii° I vi iii vii° vii° vi",
                "BenLeon / ii vii° iii vii° vii° V I iii",
                "BenLeon / iii V iii I vi IV vi IV",
                "BenLeon / iii iii I I vii° ii I V",
                "BenLeon / vi I IV ii IV IV I I",
                "BenLeon / vi vi I iii I iii iii IV",
                "BenLeon / vii° IV vii° I I I V I",
                "BenLeon / vii° V ii V vii° I iii vi",
                "BenLeon / vii° iii vii° vii° ii V ii I",
                "BenLeon / vii° vi vi vi vii° vii° I IV",
                "BenLeon / I II III bV V VI bVII VI V bV III II",
                "BenLeon / I VII bII VII I VII bII VII",
                "BenLeon / I II I bVII I VI II I bVII",
                "BenLeon / I I II II I I II II",
                "BenLeon / I bVII I bVII I bVII I bVII",
                "BenLeon / I bII I bVII bII I I bVII bII",
                "BenLeon / I bVII bVI bVII I bVII bVI bVII",
                "BenLeon / I bVI I bVII I bVI I bVII I bII bVII I bVII",
                "BenLeon / I I I I I I I I",
                "BenLeon / I I I IV I I I I I I I I"
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
            94,
            17
          ],
          "patching_rect": [
            3,
            3,
            94,
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
      },
      {
        "box": {
          "id": "parameter-request",
          "maxclass": "newobj",
          "text": "t b b",
          "patching_rect": [
            450,
            300,
            45,
            22
          ]
        }
      },
      {
        "box": {
          "id": "parameter-done",
          "maxclass": "message",
          "text": "requestdone",
          "patching_rect": [
            450,
            330,
            85,
            22
          ]
        }
      },
      {
        "box": {
          "id": "chordcount",
          "varname": "chordcount",
          "maxclass": "live.numbox",
          "parameter_enable": 1,
          "presentation": 1,
          "presentation_rect": [
            101,
            4,
            24,
            15
          ],
          "patching_rect": [
            101,
            4,
            24,
            15
          ],
          "hidden": 1,
          "fontsize": 9,
          "appearance": 1,
          "triangle": 0,
          "showname": 0,
          "hint": "Number of chords in each progression",
          "activebgcolor": [
            0.105,
            0.108,
            0.112,
            1
          ],
          "textcolor": [
            1,
            0.61,
            0.22,
            1
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Progression chord count",
              "parameter_shortname": "Chords",
              "parameter_type": 1,
              "parameter_mmin": 1,
              "parameter_mmax": 32,
              "parameter_initial_enable": 1,
              "parameter_initial": [
                4
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "chordcountmsg",
          "maxclass": "newobj",
          "text": "prepend chordcount",
          "patching_rect": [
            1150,
            600,
            130,
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
            "parameter-request",
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
      },
      {
        "patchline": {
          "source": [
            "parameter-request",
            1
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
            "parameter-request",
            0
          ],
          "destination": [
            "parameter-done",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "parameter-done",
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
            "chordcount",
            0
          ],
          "destination": [
            "chordcountmsg",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "chordcountmsg",
            0
          ],
          "destination": [
            "gen",
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
        25,
        124,
        300,
        500
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