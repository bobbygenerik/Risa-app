.class public final Lᐧᵢ/ᵔﹳ;
.super Lᐧᵢ/יـ;
.source "SourceFile"


# instance fields
.field public final synthetic ˈ:I

.field public final ˑﹳ:Lᐧᵢ/ﾞᴵ;


# direct methods
.method public synthetic constructor <init>(Lᐧᵢ/ˊˋ;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;Lᐧᵢ/ﾞᴵ;I)V
    .locals 0

    iput p5, p0, Lᐧᵢ/ᵔﹳ;->ˈ:I

    invoke-direct {p0, p1, p2, p3}, Lᐧᵢ/יـ;-><init>(Lᐧᵢ/ˊˋ;Lˎᵢ/ˈ;Lᐧᵢ/ﾞʻ;)V

    iput-object p4, p0, Lᐧᵢ/ᵔﹳ;->ˑﹳ:Lᐧᵢ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lᐧᵢ/ᴵˊ;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    iget v0, p0, Lᐧᵢ/ᵔﹳ;->ˈ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lᐧᵢ/ᵔﹳ;->ˑﹳ:Lᐧᵢ/ﾞᴵ;

    invoke-interface {v0, p1}, Lᐧᵢ/ﾞᴵ;->ⁱˊ(Lᐧᵢ/ᴵˊ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lᐧᵢ/ˈ;

    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    check-cast p2, Lˈי/ˈ;

    :try_start_0
    new-instance v0, Lᴵי/ٴﹶ;

    invoke-static {p2}, Lˉᵎ/ⁱˊ;->ˈٴ(Lˈי/ˈ;)Lˈי/ˈ;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lᴵי/ٴﹶ;-><init>(ILˈי/ˈ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʻٴ()V

    new-instance v1, Lᐧᵢ/ʽﹳ;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lᐧᵢ/ʽﹳ;-><init>(Lᐧᵢ/ˈ;I)V

    invoke-virtual {v0, v1}, Lᴵי/ٴﹶ;->ʾᵎ(Lᴵⁱ/ﾞʻ;)V

    new-instance v1, Lᐧᵢ/ʻٴ;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lᐧᵢ/ʻٴ;-><init>(Lᴵי/ٴﹶ;I)V

    invoke-interface {p1, v1}, Lᐧᵢ/ˈ;->ˉˆ(Lᐧᵢ/ᵎﹶ;)V

    invoke-virtual {v0}, Lᴵי/ٴﹶ;->ʽﹳ()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1, p2}, Lᐧᵢ/ʿᵢ;->ʼᐧ(Ljava/lang/Throwable;Lˈי/ˈ;)V

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    :goto_0
    return-object p1

    :pswitch_0
    iget-object p2, p0, Lᐧᵢ/ᵔﹳ;->ˑﹳ:Lᐧᵢ/ﾞᴵ;

    invoke-interface {p2, p1}, Lᐧᵢ/ﾞᴵ;->ⁱˊ(Lᐧᵢ/ᴵˊ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
