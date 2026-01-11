.class public final Lʿᵢ/ʼˈ;
.super Lᴵʾ/ᵔᵢ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ʼᐧ;


# instance fields
.field public final synthetic ˊʻ:Lʿᵢ/ᴵˑ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lʿᵢ/ᴵˑ;Lˈי/ˈ;I)V
    .locals 0

    iput p3, p0, Lʿᵢ/ʼˈ;->ᴵᵔ:I

    iput-object p1, p0, Lʿᵢ/ʼˈ;->ˊʻ:Lʿᵢ/ᴵˑ;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lᴵʾ/ᵔᵢ;-><init>(ILˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Lʿᵢ/ʼˈ;->ᴵᵔ:I

    check-cast p1, Lᴵי/ـˆ;

    check-cast p2, Lˈי/ˈ;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lʿᵢ/ʼˈ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ʼˈ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ʼˈ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lʿᵢ/ʼˈ;->ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object p1

    check-cast p1, Lʿᵢ/ʼˈ;

    sget-object p2, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    invoke-virtual {p1, p2}, Lʿᵢ/ʼˈ;->ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˉˆ(Ljava/lang/Object;Lˈי/ˈ;)Lˈי/ˈ;
    .locals 2

    .prologue
    iget p1, p0, Lʿᵢ/ʼˈ;->ᴵᵔ:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lʿᵢ/ʼˈ;

    iget-object v0, p0, Lʿᵢ/ʼˈ;->ˊʻ:Lʿᵢ/ᴵˑ;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lʿᵢ/ʼˈ;-><init>(Lʿᵢ/ᴵˑ;Lˈי/ˈ;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lʿᵢ/ʼˈ;

    iget-object v0, p0, Lʿᵢ/ʼˈ;->ˊʻ:Lʿᵢ/ᴵˑ;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lʿᵢ/ʼˈ;-><init>(Lʿᵢ/ᴵˑ;Lˈי/ˈ;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lʿᵢ/ʼˈ;->ᴵᵔ:I

    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lʿᵢ/ʼˈ;->ˊʻ:Lʿᵢ/ᴵˑ;

    iget-object p1, p1, Lʿᵢ/ᴵˑ;->ʼˎ:Lʻᵢ/ʼˎ;

    invoke-virtual {p1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᴵʼ;

    sget-object v0, Lʿᵢ/ᴵʼ;->ⁱˊ:Landroidx/datastore/core/NativeSharedCounter;

    iget-wide v1, p1, Lʿᵢ/ᴵʼ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/core/NativeSharedCounter;->nativeIncrementAndGetCounterValue(J)I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :pswitch_0
    iget-object p1, p0, Lʿᵢ/ʼˈ;->ˊʻ:Lʿᵢ/ᴵˑ;

    iget-object p1, p1, Lʿᵢ/ᴵˑ;->ʼˎ:Lʻᵢ/ʼˎ;

    invoke-virtual {p1}, Lʻᵢ/ʼˎ;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lʿᵢ/ᴵʼ;

    sget-object v0, Lʿᵢ/ᴵʼ;->ⁱˊ:Landroidx/datastore/core/NativeSharedCounter;

    iget-wide v1, p1, Lʿᵢ/ᴵʼ;->ﹳٴ:J

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/core/NativeSharedCounter;->nativeGetCounterValue(J)I

    move-result p1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
