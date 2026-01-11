.class public final Lˎʼ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˎʼ/ﾞᴵ;


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ˑﹳ:I

.field public final ⁱˊ:[J

.field public final ﹳٴ:[J


# direct methods
.method public constructor <init>([J[JJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˎʼ/ᵎﹶ;->ﹳٴ:[J

    iput-object p2, p0, Lˎʼ/ᵎﹶ;->ⁱˊ:[J

    iput-wide p3, p0, Lˎʼ/ᵎﹶ;->ʽ:J

    iput-wide p7, p0, Lˎʼ/ᵎﹶ;->ˈ:J

    iput p9, p0, Lˎʼ/ᵎﹶ;->ˑﹳ:I

    return-void
.end method


# virtual methods
.method public final ʽ(J)J
    .locals 2

    iget-object v0, p0, Lˎʼ/ᵎﹶ;->ⁱˊ:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result p1

    iget-object p2, p0, Lˎʼ/ᵎﹶ;->ﹳٴ:[J

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public final ˆʾ(J)Lˊﾞ/ᵢˏ;
    .locals 9

    .prologue
    iget-object v0, p0, Lˎʼ/ᵎﹶ;->ﹳٴ:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lᐧˎ/ʼʼ;->ˑﹳ([JJZ)I

    move-result v2

    new-instance v3, Lˊﾞ/ᴵˊ;

    aget-wide v4, v0, v2

    iget-object v6, p0, Lˎʼ/ᵎﹶ;->ⁱˊ:[J

    aget-wide v7, v6, v2

    invoke-direct {v3, v4, v5, v7, v8}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    array-length p1, v0

    sub-int/2addr p1, v1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lˊﾞ/ᴵˊ;

    add-int/2addr v2, v1

    aget-wide v4, v0, v2

    aget-wide v0, v6, v2

    invoke-direct {p1, v4, v5, v0, v1}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    new-instance p2, Lˊﾞ/ᵢˏ;

    invoke-direct {p2, v3, p1}, Lˊﾞ/ᵢˏ;-><init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p1, Lˊﾞ/ᵢˏ;

    invoke-direct {p1, v3, v3}, Lˊﾞ/ᵢˏ;-><init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V

    return-object p1
.end method

.method public final ˉʿ()J
    .locals 2

    iget-wide v0, p0, Lˎʼ/ᵎﹶ;->ʽ:J

    return-wide v0
.end method

.method public final ˑﹳ()J
    .locals 2

    iget-wide v0, p0, Lˎʼ/ᵎﹶ;->ˈ:J

    return-wide v0
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ﾞʻ()I
    .locals 1

    iget v0, p0, Lˎʼ/ᵎﹶ;->ˑﹳ:I

    return v0
.end method
