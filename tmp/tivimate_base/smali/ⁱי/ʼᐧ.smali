.class public final synthetic Lⁱי/ʼᐧ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ˆʾ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lⁱי/ᴵˑ;


# direct methods
.method public synthetic constructor <init>(Lⁱי/ᴵˑ;I)V
    .locals 0

    iput p2, p0, Lⁱי/ʼᐧ;->ʾˋ:I

    iput-object p1, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget v0, p0, Lⁱי/ʼᐧ;->ʾˋ:I

    check-cast p1, Lʽⁱ/ᵔי;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ʼˎ:Lﹶʽ/ʼʼ;

    iget-object v0, v0, Lﹶʽ/ʼʼ;->ˈ:Lʽⁱ/ʿᵢ;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ٴﹶ(Lʽⁱ/ʿᵢ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˉٴ(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ﾞᴵ:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ᵢˏ(Landroidx/media3/common/PlaybackException;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-object v0, v0, Lⁱי/ᴵˑ;->ˉˆ:Lʽⁱ/ᵎⁱ;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˑﹳ(Lʽⁱ/ᵎⁱ;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    invoke-virtual {v0}, Lⁱי/ᴵˑ;->ˉʿ()Z

    move-result v0

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ʼˈ(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget v0, v0, Lⁱי/ᴵˑ;->ᵔʾ:I

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ⁱˊ(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-boolean v1, v0, Lⁱי/ᴵˑ;->ﾞʻ:Z

    iget v0, v0, Lⁱי/ᴵˑ;->ˉʿ:I

    invoke-interface {p1, v0, v1}, Lʽⁱ/ᵔי;->ʽﹳ(IZ)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget v0, v0, Lⁱי/ᴵˑ;->ˑﹳ:I

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ʽʽ(I)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-boolean v1, v0, Lⁱי/ᴵˑ;->ﾞʻ:Z

    iget v0, v0, Lⁱי/ᴵˑ;->ˑﹳ:I

    invoke-interface {p1, v0, v1}, Lʽⁱ/ᵔי;->ˏי(IZ)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lⁱי/ʼᐧ;->ᴵˊ:Lⁱי/ᴵˑ;

    iget-boolean v1, v0, Lⁱי/ᴵˑ;->ᵎﹶ:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Lⁱי/ᴵˑ;->ᵎﹶ:Z

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˉʿ(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
