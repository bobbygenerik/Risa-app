.class public final Lᐧᵢ/ٴᵢ;
.super Lᐧᵢ/ʿᵢ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:I

.field public final ˈ:Ljava/lang/reflect/Method;

.field public final ˑﹳ:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;II)V
    .locals 0

    iput p3, p0, Lᐧᵢ/ٴᵢ;->ʽ:I

    iput-object p1, p0, Lᐧᵢ/ٴᵢ;->ˈ:Ljava/lang/reflect/Method;

    iput p2, p0, Lᐧᵢ/ٴᵢ;->ˑﹳ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﹳٴ(Lᐧᵢ/ˑٴ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Lᐧᵢ/ٴᵢ;->ʽ:I

    packed-switch v0, :pswitch_data_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lᐧᵢ/ˑٴ;->ʽ:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    iget-object p2, p0, Lᐧᵢ/ٴᵢ;->ˈ:Ljava/lang/reflect/Method;

    iget v0, p0, Lᐧᵢ/ٴᵢ;->ˑﹳ:I

    const-string v1, "@Url parameter is null."

    invoke-static {p2, v0, v1, p1}, Lᐧᵢ/ʿᵢ;->ˉʿ(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :pswitch_0
    check-cast p2, Lˎᵢ/ˉˆ;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p1, p1, Lᐧᵢ/ˑٴ;->ﾞᴵ:Lʼٴ/ʼˎ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lˎᵢ/ˉˆ;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Lˎᵢ/ˉˆ;->ⁱˊ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0}, Lˎᵢ/ˉˆ;->ﾞᴵ(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lˈˊ/ᵔʾ;->ˈ(Lʼٴ/ʼˎ;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string p1, "Headers parameter must not be null."

    new-array p2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lᐧᵢ/ٴᵢ;->ˈ:Ljava/lang/reflect/Method;

    iget v1, p0, Lᐧᵢ/ٴᵢ;->ˑﹳ:I

    invoke-static {v0, v1, p1, p2}, Lᐧᵢ/ʿᵢ;->ˉʿ(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
