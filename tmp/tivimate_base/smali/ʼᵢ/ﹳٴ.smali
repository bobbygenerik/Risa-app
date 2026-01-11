.class public final synthetic Lʼᵢ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic ⁱˊ:Lﾞˏ/ʼˎ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lʼᵢ/ﾞʻ;Lﾞˏ/ʼˎ;I)V
    .locals 0

    iput p3, p0, Lʼᵢ/ﹳٴ;->ﹳٴ:I

    iput-object p2, p0, Lʼᵢ/ﹳٴ;->ⁱˊ:Lﾞˏ/ʼˎ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 2

    .prologue
    iget p1, p0, Lʼᵢ/ﹳٴ;->ﹳٴ:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lʼᵢ/ﹳٴ;->ⁱˊ:Lﾞˏ/ʼˎ;

    iget-object p4, p1, Lﾞˏ/ʼˎ;->ʾˋ:Landroid/os/Handler;

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p5, v0, :cond_0

    const/16 p1, 0x20

    shr-long v0, p2, p1

    long-to-int p1, v0

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-static {p4, p3, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Lﾞˏ/ʼˎ;->ﹳٴ(J)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lʼᵢ/ﹳٴ;->ⁱˊ:Lﾞˏ/ʼˎ;

    iget-object p4, p1, Lﾞˏ/ʼˎ;->ʾˋ:Landroid/os/Handler;

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p5, v0, :cond_1

    const/16 p1, 0x20

    shr-long v0, p2, p1

    long-to-int p1, v0

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-static {p4, p3, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, p3}, Lﾞˏ/ʼˎ;->ﹳٴ(J)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
