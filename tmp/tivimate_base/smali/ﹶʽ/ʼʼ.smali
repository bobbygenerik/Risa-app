.class public final Lﹶʽ/ʼʼ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:[Lﹶʽ/ˏי;

.field public final ˈ:Lʽⁱ/ʿᵢ;

.field public final ˑﹳ:Ljava/lang/Object;

.field public final ⁱˊ:[Lⁱי/ᐧᴵ;

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>([Lⁱי/ᐧᴵ;[Lﹶʽ/ˏי;Lʽⁱ/ʿᵢ;Ljava/lang/Object;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    iput-object p1, p0, Lﹶʽ/ʼʼ;->ⁱˊ:[Lⁱי/ᐧᴵ;

    invoke-virtual {p2}, [Lﹶʽ/ˏי;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lﹶʽ/ˏי;

    iput-object p2, p0, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    iput-object p3, p0, Lﹶʽ/ʼʼ;->ˈ:Lʽⁱ/ʿᵢ;

    iput-object p4, p0, Lﹶʽ/ʼʼ;->ˑﹳ:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lﹶʽ/ʼʼ;->ﹳٴ:I

    return-void
.end method


# virtual methods
.method public final ⁱˊ(I)Z
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶʽ/ʼʼ;->ⁱˊ:[Lⁱי/ᐧᴵ;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ﹳٴ(Lﹶʽ/ʼʼ;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lﹶʽ/ʼʼ;->ⁱˊ:[Lⁱי/ᐧᴵ;

    aget-object v1, v1, p2

    iget-object v2, p1, Lﹶʽ/ʼʼ;->ⁱˊ:[Lⁱי/ᐧᴵ;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object v1, v1, p2

    iget-object p1, p1, Lﹶʽ/ʼʼ;->ʽ:[Lﹶʽ/ˏי;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
