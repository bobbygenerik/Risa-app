.class public final Lיˑ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ʾˋ;


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ⁱˊ:I

.field public final ﹳٴ:Lcom/google/android/material/datepicker/ᵔʾ;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/ᵔʾ;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lיˑ/ﾞᴵ;->ﹳٴ:Lcom/google/android/material/datepicker/ᵔʾ;

    iput p2, p0, Lיˑ/ﾞᴵ;->ⁱˊ:I

    iput-wide p3, p0, Lיˑ/ﾞᴵ;->ʽ:J

    sub-long/2addr p5, p3

    iget p1, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    int-to-long p1, p1

    div-long/2addr p5, p1

    iput-wide p5, p0, Lיˑ/ﾞᴵ;->ˈ:J

    invoke-virtual {p0, p5, p6}, Lיˑ/ﾞᴵ;->ﹳٴ(J)J

    move-result-wide p1

    iput-wide p1, p0, Lיˑ/ﾞᴵ;->ˑﹳ:J

    return-void
.end method


# virtual methods
.method public final ˆʾ(J)Lˊﾞ/ᵢˏ;
    .locals 14

    .prologue
    iget-object v0, p0, Lיˑ/ﾞᴵ;->ﹳٴ:Lcom/google/android/material/datepicker/ᵔʾ;

    iget v1, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    int-to-long v1, v1

    mul-long/2addr v1, p1

    iget v3, p0, Lיˑ/ﾞᴵ;->ⁱˊ:I

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    div-long v5, v1, v3

    iget-wide v1, p0, Lיˑ/ﾞᴵ;->ˈ:J

    const-wide/16 v3, 0x1

    sub-long v9, v1, v3

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lᐧˎ/ʼʼ;->ˆʾ(JJJ)J

    move-result-wide v5

    iget v7, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    int-to-long v7, v7

    mul-long/2addr v7, v5

    iget-wide v9, p0, Lיˑ/ﾞᴵ;->ʽ:J

    add-long/2addr v7, v9

    invoke-virtual {p0, v5, v6}, Lיˑ/ﾞᴵ;->ﹳٴ(J)J

    move-result-wide v11

    new-instance v13, Lˊﾞ/ᴵˊ;

    invoke-direct {v13, v11, v12, v7, v8}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    cmp-long v7, v11, p1

    if-gez v7, :cond_1

    sub-long/2addr v1, v3

    cmp-long v1, v5, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v5, v3

    iget v0, v0, Lcom/google/android/material/datepicker/ᵔʾ;->ʽʽ:I

    int-to-long v0, v0

    mul-long/2addr v0, v5

    add-long/2addr v0, v9

    invoke-virtual {p0, v5, v6}, Lיˑ/ﾞᴵ;->ﹳٴ(J)J

    move-result-wide v2

    new-instance v4, Lˊﾞ/ᴵˊ;

    invoke-direct {v4, v2, v3, v0, v1}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    new-instance v0, Lˊﾞ/ᵢˏ;

    invoke-direct {v0, v13, v4}, Lˊﾞ/ᵢˏ;-><init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lˊﾞ/ᵢˏ;

    invoke-direct {v0, v13, v13}, Lˊﾞ/ᵢˏ;-><init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V

    return-object v0
.end method

.method public final ˉʿ()J
    .locals 2

    iget-wide v0, p0, Lיˑ/ﾞᴵ;->ˑﹳ:J

    return-wide v0
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ﹳٴ(J)J
    .locals 9

    iget v0, p0, Lיˑ/ﾞᴵ;->ⁱˊ:I

    int-to-long v0, v0

    mul-long v2, p1, v0

    iget-object p1, p0, Lיˑ/ﾞᴵ;->ﹳٴ:Lcom/google/android/material/datepicker/ᵔʾ;

    iget p1, p1, Lcom/google/android/material/datepicker/ᵔʾ;->ᴵˊ:I

    int-to-long v6, p1

    sget-object p1, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v8}, Lᐧˎ/ʼʼ;->ᵎᵔ(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1
.end method
