.class public abstract Lˋᵔ/ˊᵔ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ⁱˊ:[Lᵎⁱ/ⁱˊ;

.field public final ﹳٴ:Lˋᵔ/ᐧﹶ;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lˋᵔ/ᐧﹶ;

    invoke-direct {v0}, Lˋᵔ/ᐧﹶ;-><init>()V

    invoke-direct {p0, v0}, Lˋᵔ/ˊᵔ;-><init>(Lˋᵔ/ᐧﹶ;)V

    return-void
.end method

.method public constructor <init>(Lˋᵔ/ᐧﹶ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˋᵔ/ˊᵔ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    return-void
.end method


# virtual methods
.method public ʽ(ILᵎⁱ/ⁱˊ;)V
    .locals 3

    .prologue
    iget-object v0, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Lᵎⁱ/ⁱˊ;

    iput-object v0, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    invoke-static {v0}, Lˉᵎ/ⁱˊ;->ʽʽ(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ˈ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    return-void
.end method

.method public abstract ˑﹳ(Lᵎⁱ/ⁱˊ;)V
.end method

.method public abstract ᵎﹶ(Lᵎⁱ/ⁱˊ;)V
.end method

.method public ᵔᵢ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    return-void
.end method

.method public abstract ⁱˊ()Lˋᵔ/ᐧﹶ;
.end method

.method public final ﹳٴ()V
    .locals 5

    .prologue
    iget-object v0, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, Lˋᵔ/ˊᵔ;->ﹳٴ:Lˋᵔ/ᐧﹶ;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v4, v3, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v4, v0}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v3, Lˋᵔ/ᐧﹶ;->ﹳٴ:Lˋᵔ/ᵎʻ;

    invoke-virtual {v1, v2}, Lˋᵔ/ᵎʻ;->ﾞᴵ(I)Lᵎⁱ/ⁱˊ;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, Lᵎⁱ/ⁱˊ;->ﹳٴ(Lᵎⁱ/ⁱˊ;Lᵎⁱ/ⁱˊ;)Lᵎⁱ/ⁱˊ;

    move-result-object v0

    invoke-virtual {p0, v0}, Lˋᵔ/ˊᵔ;->ᵎﹶ(Lᵎⁱ/ⁱˊ;)V

    iget-object v0, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    const/16 v1, 0x10

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ʽʽ(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lˋᵔ/ˊᵔ;->ﾞᴵ(Lᵎⁱ/ⁱˊ;)V

    :cond_2
    iget-object v0, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    const/16 v1, 0x20

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ʽʽ(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lˋᵔ/ˊᵔ;->ˈ(Lᵎⁱ/ⁱˊ;)V

    :cond_3
    iget-object v0, p0, Lˋᵔ/ˊᵔ;->ⁱˊ:[Lᵎⁱ/ⁱˊ;

    const/16 v1, 0x40

    invoke-static {v1}, Lˉᵎ/ⁱˊ;->ʽʽ(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lˋᵔ/ˊᵔ;->ᵔᵢ(Lᵎⁱ/ⁱˊ;)V

    :cond_4
    return-void
.end method

.method public ﾞᴵ(Lᵎⁱ/ⁱˊ;)V
    .locals 0

    return-void
.end method
