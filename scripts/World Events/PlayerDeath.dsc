DeathAnnouncer:
  Type: World
  Events:
    On Player Death:
      - define playerKilled <context.entity.name>
      - define killedBy <context.damager.entity_type>
      - define Killer <context.damager>
      - define killReason <context.entity.last_damage.cause>

      - if <[killedBy]> == player:

        - if <<[Killer]>.item_in_hand> == "air":
          - announce "<[playerKilled]> was beat to death by <<[Killer]>.name>"

        - else:
          - define material <<[killer]>.item_in_hand.material>
          - announce "<[playerKilled]> <&4>was murdered by <&f><<[Killer]>.name> <&4>wielding <<[killer]>.item_in_hand.material.formatted>"

      - else if <[killReason]> == "FALL":
        - announce "<[playerKilled]> <&4>forgot to use their parachute"

      - else if <[killReason]> == "SUFFOCATION":
        - announce "<[playerKilled]> <&4>was stupid enough to suffocate"

      - else if <[killReason]> == "DROWNING":
        - announce "<[playerKilled]> <&4>thought he was a fish and drowned"

      - else if <[killReason]> == "DROWNING":
        - announce "<[playerKilled]> <&4>thought he was a fish and drowned"

      - else if <[killReason]> == "LAVA":
        - announce "<[playerKilled]> <&4>burned to death in lava"

      - else if <[killReason]> == "FIRE":
        - announce "<[playerKilled]> <&4>burned to death"

      - else if <[killReason]> == "VOID":
        - announce "<[playerKilled]> <&4>fell into out of the world"

      - else:
        - announce <[playerKilled]> was killed by something I don't know about"
        - narrate targets:NiggerBob "<[Killer]> <[killReason]> <[killedBy]>"
