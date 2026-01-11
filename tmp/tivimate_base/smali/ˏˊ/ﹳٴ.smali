.class public final Lˏˊ/ﹳٴ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lᴵⁱ/ﾞʻ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lˈי/ˈ;Lᴵⁱ/ﾞʻ;I)V
    .locals 0

    iput p3, p0, Lˏˊ/ﹳٴ;->ᴵᵔ:I

    iput-object p2, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method

.method public constructor <init>(Lᴵⁱ/ﾞʻ;Lˈי/ˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lˏˊ/ﹳٴ;->ᴵᵔ:I

    iput-object p1, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lˏˊ/ﹳٴ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lʼˋ/ᵔﹳ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lˏˊ/ﹳٴ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lˏˊ/ﹳٴ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lˏˊ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lʼˋ/ᵔﹳ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lˏˊ/ﹳٴ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lˏˊ/ﹳٴ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lˏˊ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lᴵʼ/ⁱˊ;

    check-cast p2, Lˈי/ˈ;

    invoke-virtual {p0, p1, p2}, Lˏˊ/ﹳٴ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lˏˊ/ﹳٴ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lˏˊ/ﹳٴ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 3

    .prologue
    iget v0, p0, Lˏˊ/ﹳٴ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lˏˊ/ﹳٴ;

    iget-object v1, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    const/4 v2, 0x2

    invoke-direct {v0, p2, v1, v2}, Lˏˊ/ﹳٴ;-><init>(Lˈי/ˈ;Lᴵⁱ/ﾞʻ;I)V

    iput-object p1, v0, Lˏˊ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lˏˊ/ﹳٴ;

    iget-object v1, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lˏˊ/ﹳٴ;-><init>(Lˈי/ˈ;Lᴵⁱ/ﾞʻ;I)V

    iput-object p1, v0, Lˏˊ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    new-instance v0, Lˏˊ/ﹳٴ;

    iget-object v1, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    invoke-direct {v0, v1, p2}, Lˏˊ/ﹳٴ;-><init>(Lᴵⁱ/ﾞʻ;Lˈי/ˈ;)V

    iput-object p1, v0, Lˏˊ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lˏˊ/ﹳٴ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lˏˊ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lʼˋ/ᵔﹳ;

    check-cast p1, Lʼˋ/ʾᵎ;

    invoke-interface {p1}, Lʼˋ/ʾᵎ;->ⁱˊ()Lﹳᴵ/ﹳٴ;

    move-result-object p1

    iget-object v0, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    invoke-interface {v0, p1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lˏˊ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lʼˋ/ᵔﹳ;

    check-cast p1, Lʼˋ/ʾᵎ;

    invoke-interface {p1}, Lʼˋ/ʾᵎ;->ⁱˊ()Lﹳᴵ/ﹳٴ;

    move-result-object p1

    iget-object v0, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    invoke-interface {v0, p1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lˏˊ/ﹳٴ;->ˊʻ:Ljava/lang/Object;

    check-cast p1, Lᴵʼ/ⁱˊ;

    iget-object v0, p0, Lˏˊ/ﹳٴ;->ٴᵢ:Lᴵⁱ/ﾞʻ;

    invoke-interface {v0, p1}, Lᴵⁱ/ﾞʻ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
