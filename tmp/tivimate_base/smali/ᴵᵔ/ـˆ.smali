.class public Lᴵᵔ/ـˆ;
.super Lᴵᵔ/ﾞᴵ;
.source "SourceFile"

# interfaces
.implements Lᴵᵔ/ﹳٴ;


# static fields
.field public static final ˈⁱ:Lᴵᵔ/ᵔʾ;


# instance fields
.field public ʼˈ:Lᴵᵔ/ʼᐧ;

.field public ˆﾞ:Z

.field public ˈʿ:I

.field public ˈٴ:J

.field public ˉٴ:J

.field public ˊʻ:Z

.field public ˊˋ:Z

.field public ˋᵔ:Z

.field public ˑٴ:I

.field public ـˏ:[Lᴵᵔ/ʽﹳ;

.field public ٴʼ:Z

.field public ٴᵢ:F

.field public ᴵᵔ:F

.field public ᵎˊ:Z

.field public ᵎⁱ:Z

.field public ᵔי:Z

.field public ᵔٴ:J

.field public ﹳـ:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lᴵᵔ/ᵔʾ;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lᴵᵔ/ᵔʾ;-><init>(I)V

    sput-object v0, Lᴵᵔ/ـˆ;->ˈⁱ:Lᴵᵔ/ᵔʾ;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lᴵᵔ/ﾞᴵ;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    const/4 v2, 0x0

    iput v2, p0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    iput-wide v0, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎˊ:Z

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    const-wide/16 v1, 0x12c

    iput-wide v1, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    iput v0, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    const/4 v1, 0x1

    iput v1, p0, Lᴵᵔ/ـˆ;->ˑٴ:I

    iput-boolean v1, p0, Lᴵᵔ/ـˆ;->ˋᵔ:Z

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊˋ:Z

    sget-object v0, Lᴵᵔ/ـˆ;->ˈⁱ:Lᴵᵔ/ᵔʾ;

    iput-object v0, p0, Lᴵᵔ/ـˆ;->ʼˈ:Lᴵᵔ/ʼᐧ;

    return-void
.end method

.method public static varargs ʽʽ([F)Lᴵᵔ/ـˆ;
    .locals 1

    new-instance v0, Lᴵᵔ/ـˆ;

    invoke-direct {v0}, Lᴵᵔ/ـˆ;-><init>()V

    invoke-virtual {v0, p0}, Lᴵᵔ/ـˆ;->ˊʻ([F)V

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ᴵˊ()V

    :cond_2
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lᴵᵔ/ˈ;

    invoke-interface {v3}, Lᴵᵔ/ˈ;->ﹳٴ()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾᵎ()V

    return-void

    :cond_4
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ـˆ()Lᴵᵔ/ـˆ;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n    "

    invoke-static {v0, v2}, Lʻٴ/ᵎﹶ;->ʽ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lᴵᵔ/ʽﹳ;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ʻٴ(F)F
    .locals 2

    .prologue
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    return p1
.end method

.method public final ʼʼ()Ljava/lang/Float;
    .locals 2

    .prologue
    iget-object v0, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lᴵᵔ/ʽﹳ;->ٴʼ:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final ʼˎ()J
    .locals 5

    .prologue
    iget v0, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public final ʼᐧ(Lᴵᵔ/ʼᐧ;)V
    .locals 1

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lᴵᵔ/ـˆ;->ʼˈ:Lᴵᵔ/ʼᐧ;

    return-void

    :cond_0
    new-instance p1, Lᴵᵔ/ᵔʾ;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lᴵᵔ/ᵔʾ;-><init>(I)V

    iput-object p1, p0, Lᴵᵔ/ـˆ;->ʼˈ:Lᴵᵔ/ʼᐧ;

    return-void
.end method

.method public ʽﹳ(F)V
    .locals 12

    .prologue
    iget-object v0, p0, Lᴵᵔ/ـˆ;->ʼˈ:Lᴵᵔ/ʼᐧ;

    invoke-interface {v0, p1}, Lᴵᵔ/ʼᐧ;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v3, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    aget-object v3, v3, v2

    iget-object v4, v3, Lᴵᵔ/ʽﹳ;->ᵎⁱ:Lᴵᵔ/ˉˆ;

    iget v5, v4, Lᴵᵔ/ˉˆ;->ʾˋ:I

    iget-object v6, v4, Lᴵᵔ/ˉˆ;->ᴵˊ:Ljava/util/List;

    const/4 v7, 0x0

    cmpg-float v7, p1, v7

    const/4 v8, 0x1

    if-gtz v7, :cond_1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵᵔ/ᵔﹳ;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lᴵᵔ/ᵔﹳ;

    iget v7, v5, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    iget v8, v6, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    iget v5, v5, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    iget v6, v6, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    sub-float v9, p1, v5

    sub-float/2addr v6, v5

    div-float/2addr v9, v6

    iget-object v4, v4, Lᴵᵔ/ˉˆ;->ʽʽ:Lᴵᵔ/ʻٴ;

    if-nez v4, :cond_0

    invoke-static {v8, v7, v9, v7}, Landroid/support/v4/media/session/ﹳٴ;->ﾞᴵ(FFFF)F

    move-result v4

    goto/16 :goto_2

    :cond_0
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v9, v5, v6}, Lᴵᵔ/ʻٴ;->ﹳٴ(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto/16 :goto_2

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v7

    if-ltz v7, :cond_3

    add-int/lit8 v7, v5, -0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᴵᵔ/ᵔﹳ;

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lᴵᵔ/ᵔﹳ;

    iget v6, v7, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    iget v8, v5, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    iget v7, v7, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    iget v5, v5, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    sub-float v9, p1, v7

    sub-float/2addr v5, v7

    div-float/2addr v9, v5

    iget-object v4, v4, Lᴵᵔ/ˉˆ;->ʽʽ:Lᴵᵔ/ʻٴ;

    if-nez v4, :cond_2

    invoke-static {v8, v6, v9, v6}, Landroid/support/v4/media/session/ﹳٴ;->ﾞᴵ(FFFF)F

    move-result v4

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v9, v5, v6}, Lᴵᵔ/ʻٴ;->ﹳٴ(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_2

    :cond_3
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lᴵᵔ/ᵔﹳ;

    :goto_1
    if-ge v8, v5, :cond_6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lᴵᵔ/ᵔﹳ;

    iget v10, v9, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    cmpg-float v11, p1, v10

    if-gez v11, :cond_5

    iget v5, v7, Lᴵᵔ/ᵔﹳ;->ʽʽ:F

    sub-float v6, p1, v5

    sub-float/2addr v10, v5

    div-float/2addr v6, v10

    iget v5, v7, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    iget v7, v9, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    iget-object v4, v4, Lᴵᵔ/ˉˆ;->ʽʽ:Lᴵᵔ/ʻٴ;

    if-nez v4, :cond_4

    invoke-static {v7, v5, v6, v5}, Landroid/support/v4/media/session/ﹳٴ;->ﾞᴵ(FFFF)F

    move-result v4

    goto :goto_2

    :cond_4
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v4, v6, v5, v7}, Lᴵᵔ/ʻٴ;->ﹳٴ(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ᵔﹳ;

    iget v4, v4, Lᴵᵔ/ᵔﹳ;->ˈٴ:F

    :goto_2
    iput v4, v3, Lᴵᵔ/ʽﹳ;->ٴʼ:F

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge v1, p1, :cond_8

    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˑﹳ;

    invoke-interface {v0, p0}, Lᴵᵔ/ˑﹳ;->ﹳٴ(Lᴵᵔ/ﾞᴵ;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public ʾˋ()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    aget-object v2, v2, v1

    iget-object v3, v2, Lᴵᵔ/ʽﹳ;->ˉٴ:Lᴵᵔ/ʻٴ;

    if-nez v3, :cond_2

    iget-object v3, v2, Lᴵᵔ/ʽﹳ;->ᴵᵔ:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    if-ne v3, v4, :cond_0

    sget-object v3, Lᴵᵔ/ᵔʾ;->ʽ:Lᴵᵔ/ᵔʾ;

    goto :goto_1

    :cond_0
    const-class v4, Ljava/lang/Float;

    if-ne v3, v4, :cond_1

    sget-object v3, Lᴵᵔ/ᵔʾ;->ⁱˊ:Lᴵᵔ/ᵔʾ;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v2, Lᴵᵔ/ʽﹳ;->ˉٴ:Lᴵᵔ/ʻٴ;

    :cond_2
    iget-object v3, v2, Lᴵᵔ/ʽﹳ;->ˉٴ:Lᴵᵔ/ʻٴ;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    iput-object v3, v2, Lᴵᵔ/ˉˆ;->ʽʽ:Lᴵᵔ/ʻٴ;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    :cond_5
    return-void
.end method

.method public final ʾᵎ()V
    .locals 5

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˋᵔ:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lᴵᵔ/ʽ;->ﹳٴ()Lᴵᵔ/ʽ;

    move-result-object v0

    iget-object v2, v0, Lᴵᵔ/ʽ;->ⁱˊ:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, v0, Lᴵᵔ/ʽ;->ʽ:Z

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ᴵˊ()V

    :cond_5
    iput-boolean v2, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    iput-boolean v2, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    iput-boolean v2, p0, Lᴵᵔ/ـˆ;->ᵎˊ:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    iput-wide v3, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    if-eqz v1, :cond_6

    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lᴵᵔ/ˈ;

    invoke-interface {v4, p0}, Lᴵᵔ/ˈ;->ˈ(Lᴵᵔ/ﾞᴵ;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v2, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    return-void
.end method

.method public ˆʾ()Z
    .locals 1

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    return v0
.end method

.method public final ˈٴ(F)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾˋ()V

    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ʻٴ(F)F

    move-result p1

    iget-wide v0, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    goto :goto_0

    :cond_0
    iput p1, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    :goto_0
    iput p1, p0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    invoke-virtual {p0, p1, v0}, Lᴵᵔ/ـˆ;->ᵢˏ(FZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ʽﹳ(F)V

    return-void
.end method

.method public final ˉʿ()V
    .locals 8

    .prologue
    iget-wide v0, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    long-to-float v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    float-to-long v6, v0

    sub-long/2addr v6, v4

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ᵔᵢ()V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lᴵᵔ/ـˆ;->ᵎⁱ(Z)V

    return-void
.end method

.method public final ˉٴ(IZ)Z
    .locals 3

    .prologue
    if-lez p1, :cond_3

    iget v0, p0, Lᴵᵔ/ـˆ;->ˑٴ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v0, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    add-int/lit8 v2, v0, 0x1

    if-lt p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    rem-int/2addr p1, v1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    rem-int/2addr p1, v1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    return p2
.end method

.method public varargs ˊʻ([F)V
    .locals 3

    .prologue
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lᴵᵔ/ʽﹳ;->ˑﹳ([F)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lᴵᵔ/ʽﹳ;

    const-string v2, ""

    invoke-direct {v0, v2, p1}, Lᴵᵔ/ʽﹳ;-><init>(Ljava/lang/String;[F)V

    const/4 p1, 0x1

    new-array p1, p1, [Lᴵᵔ/ʽﹳ;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ٴᵢ([Lᴵᵔ/ʽﹳ;)V

    :goto_1
    iput-boolean v1, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    return-void
.end method

.method public final ˏי(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊˋ:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ˉʿ()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->יـ()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lᴵᵔ/ـˆ;->ˊˋ:Z

    return-void
.end method

.method public יـ()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lᴵᵔ/ـˆ;->ᵎⁱ(Z)V

    return-void
.end method

.method public ـˆ()Lᴵᵔ/ـˆ;
    .locals 7

    .prologue
    invoke-super {p0}, Lᴵᵔ/ﾞᴵ;->ﾞᴵ()Lᴵᵔ/ﾞᴵ;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ـˆ;

    iget-object v1, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lᴵᵔ/ﾞᴵ;->ʽʽ:Ljava/util/ArrayList;

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ᵔי:Z

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ᵎˊ:Z

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lᴵᵔ/ـˆ;->ˈٴ:J

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    iput-wide v2, v0, Lᴵᵔ/ـˆ;->ˉٴ:J

    const/4 v2, 0x0

    iput v2, v0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    const/4 v2, 0x1

    iput-boolean v2, v0, Lᴵᵔ/ـˆ;->ˋᵔ:Z

    iput-boolean v1, v0, Lᴵᵔ/ـˆ;->ˊˋ:Z

    iget-object v2, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    if-eqz v2, :cond_1

    array-length v3, v2

    new-array v4, v3, [Lᴵᵔ/ʽﹳ;

    iput-object v4, v0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lᴵᵔ/ـˆ;->ﹳـ:Ljava/util/HashMap;

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lᴵᵔ/ʽﹳ;->ﹳٴ()Lᴵᵔ/ʽﹳ;

    move-result-object v4

    iget-object v5, v0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    aput-object v4, v5, v1

    iget-object v5, v0, Lᴵᵔ/ـˆ;->ﹳـ:Ljava/util/HashMap;

    iget-object v6, v4, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final ٴʼ()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾˋ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    iget v0, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    iput v0, p0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    :goto_0
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ᴵˊ()V

    :cond_1
    return-void
.end method

.method public final varargs ٴᵢ([Lᴵᵔ/ʽﹳ;)V
    .locals 6

    .prologue
    array-length v0, p1

    iput-object p1, p0, Lᴵᵔ/ـˆ;->ـˏ:[Lᴵᵔ/ʽﹳ;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lᴵᵔ/ـˆ;->ﹳـ:Ljava/util/HashMap;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lᴵᵔ/ـˆ;->ﹳـ:Ljava/util/HashMap;

    iget-object v5, v3, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    return-void
.end method

.method public final ٴﹶ()Z
    .locals 1

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    return v0
.end method

.method public final ᴵˊ()V
    .locals 4

    .prologue
    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lᴵᵔ/ـˆ;->ᵎˊ:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lᴵᵔ/ˈ;

    invoke-interface {v3, p0}, Lᴵᵔ/ˈ;->ˑﹳ(Lᴵᵔ/ﾞᴵ;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎˊ:Z

    return-void
.end method

.method public ᴵᵔ(J)Lᴵᵔ/ـˆ;
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animators cannot have negative duration: "

    invoke-static {v1, p1, p2}, Lᐧـ/ˈ;->ʼᐧ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵎⁱ(Z)V
    .locals 7

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-boolean p1, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊˋ:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ˋᵔ:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    iget p1, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    cmpl-float v3, p1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_1

    iget v3, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float p1, v3

    sub-float p1, v0, p1

    iput p1, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v3, p1

    iput v3, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    iput-boolean p1, p0, Lᴵᵔ/ـˆ;->ˆﾞ:Z

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    iput-wide v3, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ٴʼ()V

    iget p1, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    cmpl-float v1, p1, v2

    if-nez v1, :cond_3

    iget-wide v1, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    long-to-float p1, v3

    long-to-float v0, v1

    div-float v0, p1, v0

    :cond_2
    invoke-virtual {p0, v0}, Lᴵᵔ/ـˆ;->ˈٴ(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ˈٴ(F)V

    :goto_1
    iget-boolean p1, p0, Lᴵᵔ/ـˆ;->ˋᵔ:Z

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {p0}, Lᴵᵔ/ﾞᴵ;->ⁱˊ(Lᴵᵔ/ﹳٴ;)V

    return-void

    :cond_5
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic ᵔʾ(J)Lᴵᵔ/ﾞᴵ;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lᴵᵔ/ـˆ;->ᴵᵔ(J)Lᴵᵔ/ـˆ;

    move-result-object p1

    return-object p1
.end method

.method public final ᵔᵢ()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ٴʼ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lᴵᵔ/ـˆ;->ٴʼ:Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵔי:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾˋ()V

    :cond_1
    :goto_0
    iget v0, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    iget-boolean v1, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    invoke-virtual {p0, v0, v1}, Lᴵᵔ/ـˆ;->ˉٴ(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, v0}, Lᴵᵔ/ـˆ;->ʽﹳ(F)V

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾᵎ()V

    return-void

    :cond_3
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animators may only be run on Looper threads"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ᵔﹳ(Z)V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾˋ()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget v1, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p0, Lᴵᵔ/ـˆ;->ˑٴ:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    invoke-virtual {p0, v0}, Lᴵᵔ/ـˆ;->ʽﹳ(F)V

    return-void
.end method

.method public final ᵢˏ(FZ)F
    .locals 5

    .prologue
    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ʻٴ(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ʻٴ(F)F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v0

    :cond_0
    double-to-int v0, v3

    int-to-float v1, v0

    sub-float/2addr p1, v1

    invoke-virtual {p0, v0, p2}, Lᴵᵔ/ـˆ;->ˉٴ(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    return p2

    :cond_1
    return p1
.end method

.method public final ﹳٴ(J)Z
    .locals 9

    .prologue
    iget-wide v0, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    if-eqz v0, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    long-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-long v4, v0

    add-long/2addr v4, p1

    :goto_0
    iput-wide v4, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    :cond_1
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iget-wide v7, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    cmp-long v0, v7, p1

    if-lez v0, :cond_2

    iget v0, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_2

    return v6

    :cond_2
    iput-boolean v4, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ٴʼ()V

    :cond_3
    iget-wide v7, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    cmp-long v0, v7, v2

    if-gez v0, :cond_4

    iget v0, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    iget-wide v7, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    long-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-long v7, v7

    long-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-long v7, v7

    sub-long v7, p1, v7

    iput-wide v7, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    iput v5, p0, Lᴵᵔ/ـˆ;->ᴵᵔ:F

    :cond_4
    iput-wide p1, p0, Lᴵᵔ/ـˆ;->ˉٴ:J

    iget-wide v7, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ᵎⁱ:Z

    if-eqz v0, :cond_b

    iget-wide v7, p0, Lᴵᵔ/ـˆ;->ᵔٴ:J

    long-to-float v0, v7

    mul-float/2addr v0, v1

    float-to-long v7, v0

    cmp-long v0, v7, v2

    if-lez v0, :cond_5

    iget-wide v1, p0, Lᴵᵔ/ـˆ;->ˈٴ:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v7

    div-float v1, p1, p2

    :cond_5
    iget p1, p0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    float-to-int p2, v1

    float-to-int p1, p1

    if-le p2, p1, :cond_6

    move p1, v4

    goto :goto_1

    :cond_6
    move p1, v6

    :goto_1
    iget p2, p0, Lᴵᵔ/ـˆ;->ˈʿ:I

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_7

    const/4 v2, -0x1

    if-eq p2, v2, :cond_7

    move p2, v4

    goto :goto_2

    :cond_7
    move p2, v6

    :goto_2
    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    iget-object p1, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v6

    :goto_3
    if-ge p2, p1, :cond_a

    iget-object v0, p0, Lᴵᵔ/ﾞᴵ;->ʾˋ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ˈ;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    move v4, v6

    :goto_4
    invoke-virtual {p0, v1}, Lᴵᵔ/ـˆ;->ʻٴ(F)F

    move-result p1

    iput p1, p0, Lᴵᵔ/ـˆ;->ٴᵢ:F

    iget-boolean p2, p0, Lᴵᵔ/ـˆ;->ˊʻ:Z

    invoke-virtual {p0, p1, p2}, Lᴵᵔ/ـˆ;->ᵢˏ(FZ)F

    move-result p1

    invoke-virtual {p0, p1}, Lᴵᵔ/ـˆ;->ʽﹳ(F)V

    move v6, v4

    :cond_b
    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ʾᵎ()V

    :cond_c
    return v6
.end method

.method public final ﾞʻ(J)Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lᴵᵔ/ـˆ;->ˋᵔ:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lᴵᵔ/ـˆ;->ﹳٴ(J)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic ﾞᴵ()Lᴵᵔ/ﾞᴵ;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ـˆ;->ـˆ()Lᴵᵔ/ـˆ;

    move-result-object v0

    return-object v0
.end method
