<?php

$commissions = [
    ['amount' => 500, 'self' => 20, 'referral' => 20],
    ['amount' => 1000, 'self' => 50, 'referral' => 50],
    ['amount' => 2500, 'self' => 150, 'referral' => 150],
    ['amount' => 5000, 'self' => 400, 'referral' => 400],
    ['amount' => 10000, 'self' => 1000, 'referral' => 1000],
    ['amount' => 30000, 'self' => 2500, 'referral' => 2500],
    ['amount' => 50000, 'self' => 5000, 'referral' => 5000]
];

$bettingCommission = 5;

?>

<!DOCTYPE html>
<html>

<head>
    <title>Commission Page</title>
</head>

<body>
    <h1>Commission Structure</h1>
    <table>
        <thead>
            <tr>
                <th>Amount</th>
                <th>Self Commission</th>
                <th>Referral Commission</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($commissions as $commission): ?>
            <tr>
                <td><?php echo $commission['amount']; ?></td>
                <td><?php echo $commission['self']; ?></td>
                <td><?php echo $commission['referral']; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <h2>Additional Commission Information</h2>
    <p>1st Recharge Guarantee: In case of a loss of your principal amount, 1% per day will be credited to your wallet on
        the 1st week of every month.</p>
    <p>Betting Commission: <?php echo $bettingCommission; ?>%</p>
    <p>Level 1: 1.5</p>
    <p>1 Direct: 2</p>
    <p>2 Direct: 3</p>
    <p>3 Direct: 4</p>
    <p>4 Direct: 5</p>
    <p>5 Direct: 0.5</p>
</body>

</html>