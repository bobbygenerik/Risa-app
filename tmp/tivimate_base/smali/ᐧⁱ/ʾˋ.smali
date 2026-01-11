.class public final synthetic Lᐧⁱ/ʾˋ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lar/tvplayer/tv/player/ui/CustomPlayerView;


# direct methods
.method public synthetic constructor <init>(Lar/tvplayer/tv/player/ui/CustomPlayerView;I)V
    .locals 0

    iput p2, p0, Lᐧⁱ/ʾˋ;->ʾˋ:I

    iput-object p1, p0, Lᐧⁱ/ʾˋ;->ᴵˊ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    iget v0, p0, Lᐧⁱ/ʾˋ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧⁱ/ʾˋ;->ᴵˊ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lᐧⁱ/ʾˋ;->ᴵˊ:Lar/tvplayer/tv/player/ui/CustomPlayerView;

    iget-object v0, v0, Lᐧⁱ/ˊʻ;->ʽʽ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
