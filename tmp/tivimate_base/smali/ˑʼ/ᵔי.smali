.class public final synthetic Lˑʼ/ᵔי;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑٴ/ﹳٴ;


# instance fields
.field public final synthetic ⁱˊ:Lˑʼ/ʿ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lˑʼ/ʿ;I)V
    .locals 0

    iput p2, p0, Lˑʼ/ᵔי;->ﹳٴ:I

    iput-object p1, p0, Lˑʼ/ᵔי;->ⁱˊ:Lˑʼ/ʿ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .prologue
    iget v0, p0, Lˑʼ/ᵔי;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lˊʻ/ʼᐧ;

    iget-object v0, p0, Lˑʼ/ᵔי;->ⁱˊ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˑٴ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p1, p1, Lˊʻ/ʼᐧ;->ﹳٴ:Z

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lˑʼ/ʿ;->יـ(ZZ)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lˊʻ/ᵎﹶ;

    iget-object v0, p0, Lˑʼ/ᵔי;->ⁱˊ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˑٴ()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lˊʻ/ᵎﹶ;->ﹳٴ:Z

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lˑʼ/ʿ;->ᵔʾ(Z)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lˑʼ/ᵔי;->ⁱˊ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˑٴ()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x50

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lˑʼ/ʿ;->ˉʿ(Z)V

    :cond_2
    return-void

    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lˑʼ/ᵔי;->ⁱˊ:Lˑʼ/ʿ;

    invoke-virtual {v0}, Lˑʼ/ʿ;->ˑٴ()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lˑʼ/ʿ;->ʼˎ(ZLandroid/content/res/Configuration;)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
