.class public final synthetic Lⁱי/ˏי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˎ/ˆʾ;


# instance fields
.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    iput p1, p0, Lⁱי/ˏי;->ʾˋ:I

    iput-boolean p2, p0, Lⁱי/ˏי;->ᴵˊ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget v0, p0, Lⁱי/ˏי;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lⁱי/ˏי;->ᴵˊ:Z

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ˉˆ(Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lⁱי/ˏי;->ᴵˊ:Z

    check-cast p1, Lʽⁱ/ᵔי;

    invoke-interface {p1, v0}, Lʽⁱ/ᵔי;->ᵎⁱ(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
