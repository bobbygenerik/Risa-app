.class public final Lﹳᵢ/ᐧᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lﹳᵢ/ˉـ;


# instance fields
.field public final ʾˋ:Lﹳᵢ/ˉـ;

.field public final ᴵˊ:J


# direct methods
.method public constructor <init>(Lﹳᵢ/ˉـ;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    iput-wide p2, p0, Lﹳᵢ/ᐧᴵ;->ᴵˊ:J

    return-void
.end method


# virtual methods
.method public final ʽ()V
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    invoke-interface {v0}, Lﹳᵢ/ˉـ;->ʽ()V

    return-void
.end method

.method public final ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I
    .locals 4

    .prologue
    iget-object v0, p0, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    invoke-interface {v0, p1, p2, p3}, Lﹳᵢ/ˉـ;->ᵔᵢ(Lـʾ/ᵔﹳ;Lﹳⁱ/ˑﹳ;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    iget-wide v2, p0, Lﹳᵢ/ᐧᴵ;->ᴵˊ:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lﹳⁱ/ˑﹳ;->ٴᵢ:J

    :cond_0
    return p1
.end method

.method public final ᵔﹳ(J)I
    .locals 2

    iget-wide v0, p0, Lﹳᵢ/ᐧᴵ;->ᴵˊ:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    invoke-interface {v0, p1, p2}, Lﹳᵢ/ˉـ;->ᵔﹳ(J)I

    move-result p1

    return p1
.end method

.method public final ﹳٴ()Z
    .locals 1

    iget-object v0, p0, Lﹳᵢ/ᐧᴵ;->ʾˋ:Lﹳᵢ/ˉـ;

    invoke-interface {v0}, Lﹳᵢ/ˉـ;->ﹳٴ()Z

    move-result v0

    return v0
.end method
