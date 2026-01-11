.class public final Lʿˎ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ʼˎ:Z

.field public ʼᐧ:I

.field public ʽ:Ljava/util/Set;

.field public ˆʾ:I

.field public ˈ:Ljava/lang/String;

.field public ˉʿ:I

.field public ˉˆ:F

.field public ˑﹳ:Ljava/lang/String;

.field public ٴﹶ:I

.field public ᵎﹶ:Z

.field public ᵔʾ:I

.field public ᵔᵢ:I

.field public ᵔﹳ:Z

.field public ⁱˊ:Ljava/lang/String;

.field public ﹳٴ:Ljava/lang/String;

.field public ﾞʻ:I

.field public ﾞᴵ:I


# direct methods
.method public static ﹳٴ(IILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    add-int/2addr p0, p1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method
