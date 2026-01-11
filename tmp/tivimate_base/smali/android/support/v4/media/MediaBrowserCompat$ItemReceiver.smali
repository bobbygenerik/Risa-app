.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Lⁱˊ/ˈ;
.source "SourceFile"


# virtual methods
.method public final ﹳٴ(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    if-eqz p2, :cond_0

    const-class v0, Landroid/support/v4/media/session/ⁱˊ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    const-string p1, "media_item"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    throw v0

    :cond_2
    :goto_0
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    throw v0

    :cond_3
    throw v0
.end method
