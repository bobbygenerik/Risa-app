.class public final synthetic Lⁱᴵ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Ljava/lang/Object;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lⁱᴵ/ʼˎ;


# direct methods
.method public synthetic constructor <init>(Lⁱᴵ/ʼˎ;Lⁱᴵ/ˆʾ;I)V
    .locals 0

    iput p3, p0, Lⁱᴵ/ᵎﹶ;->ʾˋ:I

    iput-object p1, p0, Lⁱᴵ/ᵎﹶ;->ᴵˊ:Lⁱᴵ/ʼˎ;

    iput-object p2, p0, Lⁱᴵ/ᵎﹶ;->ʽʽ:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    iget v0, p0, Lⁱᴵ/ᵎﹶ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lⁱᴵ/ᵎﹶ;->ᴵˊ:Lⁱᴵ/ʼˎ;

    iget v1, v0, Lⁱᴵ/ʼˎ;->ﹳٴ:I

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lⁱᴵ/ᵎﹶ;->ʽʽ:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Lⁱᴵ/ˆʾ;->ˊʻ(ILﹳᵢ/ᵢˏ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lⁱᴵ/ᵎﹶ;->ᴵˊ:Lⁱᴵ/ʼˎ;

    iget v1, v0, Lⁱᴵ/ʼˎ;->ﹳٴ:I

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lⁱᴵ/ᵎﹶ;->ʽʽ:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Lⁱᴵ/ˆʾ;->ʼˎ(ILﹳᵢ/ᵢˏ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lⁱᴵ/ᵎﹶ;->ᴵˊ:Lⁱᴵ/ʼˎ;

    iget v1, v0, Lⁱᴵ/ʼˎ;->ﹳٴ:I

    iget-object v0, v0, Lⁱᴵ/ʼˎ;->ⁱˊ:Lﹳᵢ/ᵢˏ;

    iget-object v2, p0, Lⁱᴵ/ᵎﹶ;->ʽʽ:Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Lⁱᴵ/ˆʾ;->ʾˋ(ILﹳᵢ/ᵢˏ;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
