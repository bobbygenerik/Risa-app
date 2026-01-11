.class public final Lﹶˎ/ˑﹳ;
.super Lᵢˋ/ⁱˊ;
.source "SourceFile"


# instance fields
.field public final ˈٴ:Ljava/util/List;

.field public final ᴵᵔ:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lᵢˋ/ⁱˊ;-><init>(JJ)V

    iput-wide p1, p0, Lﹶˎ/ˑﹳ;->ᴵᵔ:J

    iput-object p3, p0, Lﹶˎ/ˑﹳ;->ˈٴ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ʽ()J
    .locals 4

    invoke-virtual {p0}, Lᵢˋ/ⁱˊ;->ⁱˊ()V

    iget-wide v0, p0, Lᵢˋ/ⁱˊ;->ʽʽ:J

    long-to-int v0, v0

    iget-object v1, p0, Lﹶˎ/ˑﹳ;->ˈٴ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ˆʾ;

    iget-wide v0, v0, Lʽˑ/ˆʾ;->ᴵᵔ:J

    iget-wide v2, p0, Lﹶˎ/ˑﹳ;->ᴵᵔ:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final ﹳٴ()J
    .locals 5

    invoke-virtual {p0}, Lᵢˋ/ⁱˊ;->ⁱˊ()V

    iget-wide v0, p0, Lᵢˋ/ⁱˊ;->ʽʽ:J

    long-to-int v0, v0

    iget-object v1, p0, Lﹶˎ/ˑﹳ;->ˈٴ:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽˑ/ˆʾ;

    iget-wide v1, p0, Lﹶˎ/ˑﹳ;->ᴵᵔ:J

    iget-wide v3, v0, Lʽˑ/ˆʾ;->ᴵᵔ:J

    add-long/2addr v1, v3

    iget-wide v3, v0, Lʽˑ/ˆʾ;->ʽʽ:J

    add-long/2addr v1, v3

    return-wide v1
.end method
