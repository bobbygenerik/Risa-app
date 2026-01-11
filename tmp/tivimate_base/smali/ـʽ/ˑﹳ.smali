.class public final Lـʽ/ˑﹳ;
.super Lـʽ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public ʿ:Ljava/lang/String;

.field public ˈⁱ:I

.field public ˉـ:J

.field public ᴵˑ:[B

.field public ﹳـ:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lـʽ/ⁱˊ;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lʻᴵ/ﾞᴵ;->ᴵˊ:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const-class v2, Lـʽ/ˑﹳ;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-super {p0, p1}, Lـʽ/ⁱˊ;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lـʽ/ˑﹳ;

    iget-object v2, p0, Lـʽ/ⁱˊ;->ˑٴ:Lـʽ/ˆʾ;

    if-eqz v2, :cond_3

    iget-wide v2, v2, Lـʽ/ˆʾ;->ᴵᵔ:J

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lـʽ/ˑﹳ;->ˉـ:J

    :goto_0
    iget-object v4, p1, Lـʽ/ⁱˊ;->ˑٴ:Lـʽ/ˆʾ;

    if-eqz v4, :cond_4

    iget-wide v4, v4, Lـʽ/ˆʾ;->ᴵᵔ:J

    goto :goto_1

    :cond_4
    iget-wide v4, p1, Lـʽ/ˑﹳ;->ˉـ:J

    :goto_1
    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    iget-object v0, p0, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    iget-object v1, p0, Lـʽ/ⁱˊ;->ˑٴ:Lـʽ/ˆʾ;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lـʽ/ˆʾ;->ᴵᵔ:J

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lـʽ/ˑﹳ;->ˉـ:J

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    return-object v0
.end method
