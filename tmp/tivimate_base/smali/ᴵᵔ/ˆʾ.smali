.class public final Lᴵᵔ/ˆʾ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ⁱˊ:I

.field public final ﹳٴ:Lᴵᵔ/ٴﹶ;


# direct methods
.method public constructor <init>(Lᴵᵔ/ٴﹶ;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iput p2, p0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-nez v0, :cond_0

    const-string v0, "start"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "delay ended"

    goto :goto_0

    :cond_1
    const-string v0, "end"

    :goto_0
    const-string v1, " "

    invoke-static {v0, v1}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget-object v1, v1, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﹳٴ()J
    .locals 6

    .prologue
    iget-object v0, p0, Lᴵᵔ/ˆʾ;->ﹳٴ:Lᴵᵔ/ٴﹶ;

    iget v1, p0, Lᴵᵔ/ˆʾ;->ⁱˊ:I

    if-nez v1, :cond_0

    iget-wide v0, v0, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-wide v1, v0, Lᴵᵔ/ٴﹶ;->ˉٴ:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-wide v3

    :cond_1
    iget-object v0, v0, Lᴵᵔ/ٴﹶ;->ʾˋ:Lᴵᵔ/ﾞᴵ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v1

    :cond_2
    iget-wide v0, v0, Lᴵᵔ/ٴﹶ;->ᵎⁱ:J

    return-wide v0
.end method
