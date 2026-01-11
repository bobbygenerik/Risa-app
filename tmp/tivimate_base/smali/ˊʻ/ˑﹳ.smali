.class public abstract Lˊʻ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ʽ(Landroid/app/Notification$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static ˈ(Landroid/app/Notification$Action$Builder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    return-void
.end method

.method public static ˑﹳ(Lar/tvplayer/tv/base/ScreenOnService;Landroid/app/Notification;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method

.method public static ⁱˊ(Landroid/app/Notification$Builder;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static ﹳٴ(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ﾞᴵ(Lar/tvplayer/tv/base/ScreenOnService;Landroid/app/Notification;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void
.end method
