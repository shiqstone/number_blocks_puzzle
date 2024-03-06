import 'package:number_blocks_puzzle/data/result.dart';
import 'package:number_blocks_puzzle/widgets/game/material/page.dart';
import 'package:number_blocks_puzzle/widgets/game/material/victory.dart';
import 'package:number_blocks_puzzle/widgets/game/presenter.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootWidget = _buildRoot(context);
    return GamePresenterWidget(
      child: rootWidget,
      onSolve: (result) {
        _submitResult(context, result);
        _showVictoryDialog(context, result);
      },
    );
  }

  Widget _buildRoot(BuildContext context) {
    return GameMaterialPage();
  }

  void _showVictoryDialog(BuildContext context, Result result) {
    showDialog(
      context: context,
      builder: (context) => GameVictoryDialog(result: result),
    );
  }

  void _submitResult(BuildContext context, Result result) {
    // final playGames = PlayGamesContainer.of(context);
    // if (playGames != null)
    // playGames.submitScore(
    //   key: PlayGames.getLeaderboardOfSize(result.size),
    //   time: result.time,
    // );
  }
}
