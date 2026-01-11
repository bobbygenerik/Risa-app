.class public final Lٴᴵ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:I

.field public final ˈ:I

.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iput-object p4, p0, Lٴᴵ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iput p1, p0, Lٴᴵ/ⁱˊ;->ʽ:I

    iput p2, p0, Lٴᴵ/ⁱˊ;->ˈ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lٴᴵ/ⁱˊ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lٴᴵ/ⁱˊ;

    iget v1, p0, Lٴᴵ/ⁱˊ;->ʽ:I

    iget v3, p1, Lٴᴵ/ⁱˊ;->ʽ:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lٴᴵ/ⁱˊ;->ˈ:I

    iget v3, p1, Lٴᴵ/ⁱˊ;->ˈ:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    iget-object v3, p1, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lٴᴵ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    iget-object p1, p1, Lٴᴵ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lٴᴵ/ⁱˊ;->ʽ:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lٴᴵ/ⁱˊ;->ˈ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lٴᴵ/ⁱˊ;->ﹳٴ:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lٴᴵ/ⁱˊ;->ⁱˊ:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
