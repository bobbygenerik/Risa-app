.class public final Lˋˋ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˋˋ/ˑٴ;


# instance fields
.field public ʽʽ:I

.field public final ʾˋ:Lˋˋ/ˑٴ;

.field public ˈٴ:I

.field public ᴵˊ:I

.field public ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lˋˋ/ˑٴ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    const/4 v0, -0x1

    iput v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iput v0, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    const/4 v0, 0x0

    iput-object v0, p0, Lˋˋ/ᵔᵢ;->ᴵᵔ:Ljava/lang/Object;

    iput-object p1, p0, Lˋˋ/ᵔᵢ;->ʾˋ:Lˋˋ/ˑٴ;

    return-void
.end method


# virtual methods
.method public final ʼˎ(II)V
    .locals 3

    .prologue
    iget v0, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    if-lt v0, p1, :cond_0

    add-int v2, p1, p2

    if-gt v0, v2, :cond_0

    iget v0, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    add-int/2addr v0, p2

    iput v0, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    iput p1, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ᵔᵢ;->ﹳٴ()V

    iput p1, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iput p2, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    iput v1, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    return-void
.end method

.method public final ʽʽ(IILjava/lang/Object;)V
    .locals 5

    .prologue
    iget v0, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iget v2, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    add-int v3, p1, p2

    if-lt v3, v0, :cond_0

    iget-object v4, p0, Lˋˋ/ᵔᵢ;->ᴵᵔ:Ljava/lang/Object;

    if-ne v4, p3, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    sub-int/2addr p1, p2

    iput p1, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ᵔᵢ;->ﹳٴ()V

    iput p1, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iput p2, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    iput-object p3, p0, Lˋˋ/ᵔᵢ;->ᴵᵔ:Ljava/lang/Object;

    iput v1, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    return-void
.end method

.method public final ˆʾ(II)V
    .locals 1

    invoke-virtual {p0}, Lˋˋ/ᵔᵢ;->ﹳٴ()V

    iget-object v0, p0, Lˋˋ/ᵔᵢ;->ʾˋ:Lˋˋ/ˑٴ;

    invoke-interface {v0, p1, p2}, Lˋˋ/ˑٴ;->ˆʾ(II)V

    return-void
.end method

.method public final ᵢˏ(II)V
    .locals 4

    .prologue
    iget v0, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    if-lt p1, v0, :cond_0

    iget v2, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    add-int v3, v0, v2

    if-gt p1, v3, :cond_0

    add-int/2addr v2, p2

    iput v2, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lˋˋ/ᵔᵢ;->ﹳٴ()V

    iput p1, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iput p2, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    iput v1, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    return-void
.end method

.method public final ﹳٴ()V
    .locals 4

    .prologue
    iget v0, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lˋˋ/ᵔᵢ;->ʾˋ:Lˋˋ/ˑٴ;

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iget v1, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    iget-object v3, p0, Lˋˋ/ᵔᵢ;->ᴵᵔ:Ljava/lang/Object;

    invoke-interface {v2, v0, v1, v3}, Lˋˋ/ˑٴ;->ʽʽ(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iget v1, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    invoke-interface {v2, v0, v1}, Lˋˋ/ˑٴ;->ʼˎ(II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lˋˋ/ᵔᵢ;->ʽʽ:I

    iget v1, p0, Lˋˋ/ᵔᵢ;->ˈٴ:I

    invoke-interface {v2, v0, v1}, Lˋˋ/ˑٴ;->ᵢˏ(II)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lˋˋ/ᵔᵢ;->ᴵᵔ:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lˋˋ/ᵔᵢ;->ᴵˊ:I

    return-void
.end method
