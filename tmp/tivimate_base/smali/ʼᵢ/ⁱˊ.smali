.class public final synthetic Lʼᵢ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˆʽ/ٴﹶ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lʼᵢ/ⁱˊ;->ʾˋ:I

    iput p1, p0, Lʼᵢ/ⁱˊ;->ᴵˊ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʼᵢ/ⁱˊ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecQueueingThread:"

    iget v2, p0, Lʼᵢ/ⁱˊ;->ᴵˊ:I

    invoke-static {v2, v1}, Lʼᵢ/ʽ;->ﹳᐧ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayer:MediaCodecAsyncAdapter:"

    iget v2, p0, Lʼᵢ/ⁱˊ;->ᴵˊ:I

    invoke-static {v2, v1}, Lʼᵢ/ʽ;->ﹳᐧ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
