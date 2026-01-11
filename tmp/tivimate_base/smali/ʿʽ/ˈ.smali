.class public final Lʿʽ/ˈ;
.super Lˊﾞ/ʽﹳ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽ:Lʿʽ/ʽ;

.field public final synthetic ⁱˊ:Lˊﾞ/ʾˋ;


# direct methods
.method public constructor <init>(Lʿʽ/ʽ;Lˊﾞ/ʾˋ;Lˊﾞ/ʾˋ;)V
    .locals 0

    iput-object p1, p0, Lʿʽ/ˈ;->ʽ:Lʿʽ/ʽ;

    iput-object p3, p0, Lʿʽ/ˈ;->ⁱˊ:Lˊﾞ/ʾˋ;

    invoke-direct {p0, p2}, Lˊﾞ/ʽﹳ;-><init>(Lˊﾞ/ʾˋ;)V

    return-void
.end method


# virtual methods
.method public final ˆʾ(J)Lˊﾞ/ᵢˏ;
    .locals 8

    iget-object v0, p0, Lʿʽ/ˈ;->ⁱˊ:Lˊﾞ/ʾˋ;

    invoke-interface {v0, p1, p2}, Lˊﾞ/ʾˋ;->ˆʾ(J)Lˊﾞ/ᵢˏ;

    move-result-object p1

    new-instance p2, Lˊﾞ/ᵢˏ;

    new-instance v0, Lˊﾞ/ᴵˊ;

    iget-object v1, p1, Lˊﾞ/ᵢˏ;->ﹳٴ:Lˊﾞ/ᴵˊ;

    iget-wide v2, v1, Lˊﾞ/ᴵˊ;->ﹳٴ:J

    iget-wide v4, v1, Lˊﾞ/ᴵˊ;->ⁱˊ:J

    iget-object v1, p0, Lʿʽ/ˈ;->ʽ:Lʿʽ/ʽ;

    iget-wide v6, v1, Lʿʽ/ʽ;->ᴵˊ:J

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    new-instance v1, Lˊﾞ/ᴵˊ;

    iget-object p1, p1, Lˊﾞ/ᵢˏ;->ⁱˊ:Lˊﾞ/ᴵˊ;

    iget-wide v2, p1, Lˊﾞ/ᴵˊ;->ﹳٴ:J

    iget-wide v4, p1, Lˊﾞ/ᴵˊ;->ⁱˊ:J

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lˊﾞ/ᴵˊ;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lˊﾞ/ᵢˏ;-><init>(Lˊﾞ/ᴵˊ;Lˊﾞ/ᴵˊ;)V

    return-object p2
.end method
