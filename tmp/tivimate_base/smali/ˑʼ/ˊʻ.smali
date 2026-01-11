.class public final synthetic Lˑʼ/ˊʻ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˑٴ/ﹳٴ;


# instance fields
.field public final synthetic ⁱˊ:Lᵔᵢ/ˆʾ;

.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(Lᵔᵢ/ˆʾ;I)V
    .locals 0

    iput p2, p0, Lˑʼ/ˊʻ;->ﹳٴ:I

    iput-object p1, p0, Lˑʼ/ˊʻ;->ⁱˊ:Lᵔᵢ/ˆʾ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget v0, p0, Lˑʼ/ˊʻ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/content/Intent;

    iget-object p1, p0, Lˑʼ/ˊʻ;->ⁱˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {p1}, Lˉˆ/ʿ;->ᵔٴ()V

    return-void

    :pswitch_0
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p1, p0, Lˑʼ/ˊʻ;->ⁱˊ:Lᵔᵢ/ˆʾ;

    iget-object p1, p1, Lᵔᵢ/ˆʾ;->ʼˈ:Lˉˆ/ʿ;

    invoke-virtual {p1}, Lˉˆ/ʿ;->ᵔٴ()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
