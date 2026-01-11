.class public final Lˊﾞ/ˑﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊﾞ/ʾˋ;


# instance fields
.field public final ʽ:J

.field public final ˈ:J

.field public final ˑﹳ:J

.field public final ⁱˊ:J

.field public final ﹳٴ:Lˊﾞ/ᵎﹶ;

.field public final ﾞᴵ:J


# direct methods
.method public constructor <init>(Lˊﾞ/ᵎﹶ;JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊﾞ/ˑﹳ;->ﹳٴ:Lˊﾞ/ᵎﹶ;

    iput-wide p2, p0, Lˊﾞ/ˑﹳ;->ⁱˊ:J

    iput-wide p4, p0, Lˊﾞ/ˑﹳ;->ʽ:J

    iput-wide p6, p0, Lˊﾞ/ˑﹳ;->ˈ:J

    iput-wide p8, p0, Lˊﾞ/ˑﹳ;->ˑﹳ:J

    iput-wide p10, p0, Lˊﾞ/ˑﹳ;->ﾞᴵ:J

    return-void
.end method


# virtual methods
.method public final ˆʾ(J)Lˊﾞ/ᵢˏ;
    .locals 13

    iget-object v0, p0, Lˊﾞ/ˑﹳ;->ﹳٴ:Lˊﾞ/ᵎﹶ;

    invoke-interface {v0, p1, p2}, Lˊﾞ/ᵎﹶ;->ٴﹶ(J)J

    move-result-wide v1

    iget-wide v9, p0, Lˊﾞ/ˑﹳ;->ˑﹳ:J

    iget-wide v11, p0, Lˊﾞ/ˑﹳ;->ﾞᴵ:J

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lˊﾞ/ˑﹳ;->ʽ:J

    iget-wide v7, p0, Lˊﾞ/ˑﹳ;->ˈ:J

    invoke-static/range {v1 .. v12}, Lˊﾞ/ﾞᴵ;->ﹳٴ(JJJJJJ)J

    move-result-wide v0

    new-instance v2, Lˊﾞ/ᵢˏ;

    new-instance v3, Lˊﾞ/ᴵˊ;

    invoke-direct {v3, p1, p2, v0, v1}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    invoke-direct {v2, v3, v3}, Lˊﾞ/ᵢˏ;-><init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V

    return-object v2
.end method

.method public final ˉʿ()J
    .locals 2

    iget-wide v0, p0, Lˊﾞ/ˑﹳ;->ⁱˊ:J

    return-wide v0
.end method

.method public final ᵔᵢ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
