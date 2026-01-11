.class public final Lⁱי/ᵎᵔ;
.super Lﹳᵢ/ʼᐧ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final ˈ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʽⁱ/ʼˈ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lⁱי/ᵎᵔ;->ʽ:I

    invoke-direct {p0, p1}, Lﹳᵢ/ʼᐧ;-><init>(Lʽⁱ/ʼˈ;)V

    new-instance p1, Lʽⁱ/ˊˋ;

    invoke-direct {p1}, Lʽⁱ/ˊˋ;-><init>()V

    iput-object p1, p0, Lⁱי/ᵎᵔ;->ˈ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lʽⁱ/ʼˈ;Lʽⁱ/ᴵˊ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lⁱי/ᵎᵔ;->ʽ:I

    invoke-direct {p0, p1}, Lﹳᵢ/ʼᐧ;-><init>(Lʽⁱ/ʼˈ;)V

    iput-object p2, p0, Lⁱי/ᵎᵔ;->ˈ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;
    .locals 1

    .prologue
    iget v0, p0, Lⁱי/ᵎᵔ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Lﹳᵢ/ʼᐧ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lﹳᵢ/ʼᐧ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    iget-object p1, p0, Lⁱי/ᵎᵔ;->ˈ:Ljava/lang/Object;

    check-cast p1, Lʽⁱ/ᴵˊ;

    iput-object p1, p2, Lʽⁱ/ˊˋ;->ʽ:Lʽⁱ/ᴵˊ;

    iget-object p1, p1, Lʽⁱ/ᴵˊ;->ⁱˊ:Lʽⁱ/ʼʼ;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;
    .locals 11

    .prologue
    iget v0, p0, Lⁱי/ᵎᵔ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Lﹳᵢ/ʼᐧ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lﹳᵢ/ʼᐧ;->ⁱˊ:Lʽⁱ/ʼˈ;

    invoke-virtual {v0, p1, p2, p3}, Lʽⁱ/ʼˈ;->ﾞᴵ(ILʽⁱ/ˋᵔ;Z)Lʽⁱ/ˋᵔ;

    move-result-object v1

    iget p1, v1, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-object p3, p0, Lⁱי/ᵎᵔ;->ˈ:Ljava/lang/Object;

    check-cast p3, Lʽⁱ/ˊˋ;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, p3, v2, v3}, Lʽⁱ/ʼˈ;->ˉʿ(ILʽⁱ/ˊˋ;J)Lʽⁱ/ˊˋ;

    move-result-object p1

    invoke-virtual {p1}, Lʽⁱ/ˊˋ;->ﹳٴ()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v2, p2, Lʽⁱ/ˋᵔ;->ﹳٴ:Ljava/lang/Object;

    iget-object v3, p2, Lʽⁱ/ˋᵔ;->ⁱˊ:Ljava/lang/Object;

    iget v4, p2, Lʽⁱ/ˋᵔ;->ʽ:I

    iget-wide v5, p2, Lʽⁱ/ˋᵔ;->ˈ:J

    iget-wide v7, p2, Lʽⁱ/ˋᵔ;->ˑﹳ:J

    sget-object v9, Lʽⁱ/ʽ;->ʽ:Lʽⁱ/ʽ;

    const/4 v10, 0x1

    invoke-virtual/range {v1 .. v10}, Lʽⁱ/ˋᵔ;->ᵔᵢ(Ljava/lang/Object;Ljava/lang/Object;IJJLʽⁱ/ʽ;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, v1, Lʽⁱ/ˋᵔ;->ﾞᴵ:Z

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
