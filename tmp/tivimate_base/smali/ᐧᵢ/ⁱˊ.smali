.class public final Lᐧᵢ/ⁱˊ;
.super Lᐧᵢ/ٴﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lᐧᵢ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Landroidx/leanback/widget/ʻٴ;)Lᐧᵢ/ﾞʻ;
    .locals 2

    .prologue
    iget v0, p0, Lᐧᵢ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lᐧᵢ/ʿᵢ;->ᵔᵢ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lj$/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Lᐧᵢ/ʿᵢ;->ᵎﹶ(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroidx/leanback/widget/ʻٴ;->ʽﹳ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lᐧᵢ/ﾞʻ;

    move-result-object p1

    new-instance p2, Lˊⁱ/ˑﹳ;

    const/16 p3, 0x11

    invoke-direct {p2, p3, p1}, Lˊⁱ/ˑﹳ;-><init>(ILjava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1

    :pswitch_0
    const-class p3, Lˎᵢ/ᴵᵔ;

    if-ne p1, p3, :cond_2

    const-class p1, Lⁱʻ/ـˆ;

    invoke-static {p2, p1}, Lᐧᵢ/ʿᵢ;->ٴﹶ([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lᐧᵢ/ﹳٴ;->ᴵᵔ:Lᐧᵢ/ﹳٴ;

    goto :goto_1

    :cond_1
    sget-object p1, Lᐧᵢ/ﹳٴ;->ʽʽ:Lᐧᵢ/ﹳٴ;

    goto :goto_1

    :cond_2
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_3

    sget-object p1, Lᐧᵢ/ﹳٴ;->ٴᵢ:Lᐧᵢ/ﹳٴ;

    goto :goto_1

    :cond_3
    sget-boolean p2, Lᐧᵢ/ʿᵢ;->ⁱˊ:Z

    if-eqz p2, :cond_4

    :try_start_0
    const-class p2, Lʻᵢ/ʼᐧ;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p2, :cond_4

    sget-object p1, Lᐧᵢ/ﹳٴ;->ˊʻ:Lᐧᵢ/ﹳٴ;

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    sput-boolean p1, Lᐧᵢ/ʿᵢ;->ⁱˊ:Z

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public ﹳٴ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lᐧᵢ/ﾞʻ;
    .locals 1

    .prologue
    iget v0, p0, Lᐧᵢ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lᐧᵢ/ٴﹶ;->ﹳٴ(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lᐧᵢ/ﾞʻ;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-class p2, Lˎᵢ/ʾˋ;

    invoke-static {p1}, Lᐧᵢ/ʿᵢ;->ᵔᵢ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lᐧᵢ/ﹳٴ;->ˈٴ:Lᐧᵢ/ﹳٴ;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
