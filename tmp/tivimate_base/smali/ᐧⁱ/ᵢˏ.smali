.class public final synthetic Lᐧⁱ/ᵢˏ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic ﹳٴ:Lar/tvplayer/tv/player/ui/CustomPlayerView;


# direct methods
.method public synthetic constructor <init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᐧⁱ/ᵢˏ;->ﹳٴ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onImageAvailable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    aget-object p1, p3, p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p2, p0, Lᐧⁱ/ᵢˏ;->ﹳٴ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object p3, p2, Lᐧⁱ/ˊʻ;->ˈʿ:Landroid/os/Handler;

    new-instance v0, Lᐧᵢ/ˉʿ;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p1}, Lᐧᵢ/ˉʿ;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
