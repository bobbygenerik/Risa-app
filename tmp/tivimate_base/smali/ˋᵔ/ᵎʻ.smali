.class public Lˋᵔ/ᵎʻ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ⁱˊ:Lˋᵔ/ᐧﹶ;


# instance fields
.field public final ﹳٴ:Lˋᵔ/ᐧﹶ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lˋᵔ/ʻᵎ;

    invoke-direct {v0}, Lˋᵔ/ʻᵎ;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    new-instance v0, Lˋᵔ/ᴵʼ;

    invoke-direct {v0}, Lˋᵔ/ᴵʼ;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    new-instance v0, Lˋᵔ/ˏᵢ;

    invoke-direct {v0}, Lˋᵔ/ˏᵢ;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    new-instance v0, Lˋᵔ/ᐧᴵ;

    invoke-direct {v0}, Lˋᵔ/ᐧᴵ;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lˋᵔ/ᵎᵔ;

    invoke-direct {v0}, Lˋᵔ/ᵎᵔ;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lˋᵔ/ˊᵔ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object v0

    iget-object v0, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ﹳٴ()Lˋᵔ/ᐧﹶ;

    move-result-object v0

    iget-object v0, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ⁱˊ()Lˋᵔ/ᐧﹶ;

    move-result-object v0

    iget-object v0, v0, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v0}, Lˋᵔ/ᵎʻ;->ʽ()Lˋᵔ/ᐧﹶ;

    move-result-object v0

    sput-object v0, Lˋᵔ/ᵎʻ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    return-void
.end method

.method public constructor <init>(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ᵎʻ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lˋᵔ/ᵎʻ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lˋᵔ/ᵎʻ;

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ˉˆ()Z

    move-result v1

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ˉˆ()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ᵔʾ()Z

    move-result v1

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ᵔʾ()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v1

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v3

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object v1

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object v3

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ˑﹳ()Lˋᵔ/ˆʾ;

    move-result-object v1

    invoke-virtual {p1}, Lˋᵔ/ᵎʻ;->ˑﹳ()Lˋᵔ/ˆʾ;

    move-result-object p1

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ˉˆ()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ᵔʾ()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v2

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ʼˎ()Lᵎⁱ/ⁱˊ;

    move-result-object v3

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ˑﹳ()Lˋᵔ/ˆʾ;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ʼˎ()Lᵎⁱ/ⁱˊ;
    .locals 1

    sget-object v0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method public ʼᐧ([Lᵎⁱ/ⁱˊ;)V
    .locals 0

    return-void
.end method

.method public ʽ()Lˋᵔ/ᐧﹶ;
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᵎʻ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    return-object v0
.end method

.method public ˆʾ()Lᵎⁱ/ⁱˊ;
    .locals 1

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    return-object v0
.end method

.method public ˈ(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public ˉʿ(IIII)Lˋᵔ/ᐧﹶ;
    .locals 0

    sget-object p1, Lˋᵔ/ᵎʻ;->ⁱˊ:Lˋᵔ/ᐧﹶ;

    return-object p1
.end method

.method public ˉˆ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ˑﹳ()Lˋᵔ/ˆʾ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public יـ(I)V
    .locals 0

    return-void
.end method

.method public ٴﹶ()Lᵎⁱ/ⁱˊ;
    .locals 1

    sget-object v0, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object v0
.end method

.method public ᵎﹶ(I)Lᵎⁱ/ⁱˊ;
    .locals 1

    .prologue
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    sget-object p1, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to query the maximum insets for IME"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ᵔʾ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ᵔᵢ()Lᵎⁱ/ⁱˊ;
    .locals 1

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    return-object v0
.end method

.method public ᵔﹳ(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    return-void
.end method

.method public ⁱˊ()Lˋᵔ/ᐧﹶ;
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᵎʻ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    return-object v0
.end method

.method public ﹳٴ()Lˋᵔ/ᐧﹶ;
    .locals 1

    iget-object v0, p0, Lˋᵔ/ᵎʻ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    return-object v0
.end method

.method public ﹳᐧ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    return-void
.end method

.method public ﾞʻ()Lᵎⁱ/ⁱˊ;
    .locals 1

    invoke-virtual {p0}, Lˋᵔ/ᵎʻ;->ٴﹶ()Lᵎⁱ/ⁱˊ;

    move-result-object v0

    return-object v0
.end method

.method public ﾞᴵ(I)Lᵎⁱ/ⁱˊ;
    .locals 0

    sget-object p1, Lᵎⁱ/ⁱˊ;->ˑﹳ:Lᵎⁱ/ⁱˊ;

    return-object p1
.end method
