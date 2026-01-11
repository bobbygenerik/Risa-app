.class public final Lᴵᵔ/ʽﹳ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ˆﾞ:[Ljava/lang/Class;

.field public static final ˈʿ:Ljava/util/HashMap;

.field public static final ᵎˊ:[Ljava/lang/Class;

.field public static final ᵔי:[Ljava/lang/Class;

.field public static final ᵔٴ:Ljava/util/HashMap;


# instance fields
.field public ʽʽ:Ljava/lang/reflect/Method;

.field public ʾˋ:Ljava/lang/String;

.field public ˈٴ:Ljava/lang/reflect/Method;

.field public ˉٴ:Lᴵᵔ/ʻٴ;

.field public ˊʻ:Lᴵᵔ/ˉˆ;

.field public ٴʼ:F

.field public final ٴᵢ:[Ljava/lang/Object;

.field public ᴵˊ:Landroid/util/Property;

.field public ᴵᵔ:Ljava/lang/Class;

.field public ᵎⁱ:Lᴵᵔ/ˉˆ;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Float;

    aput-object v5, v1, v4

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-class v11, Ljava/lang/Double;

    aput-object v11, v1, v10

    const/4 v12, 0x5

    const-class v13, Ljava/lang/Integer;

    aput-object v13, v1, v12

    sput-object v1, Lᴵᵔ/ʽﹳ;->ᵎˊ:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    aput-object v9, v1, v2

    aput-object v13, v1, v4

    aput-object v3, v1, v6

    aput-object v7, v1, v8

    aput-object v5, v1, v10

    aput-object v11, v1, v12

    sput-object v1, Lᴵᵔ/ʽﹳ;->ᵔי:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v7, v0, v2

    aput-object v11, v0, v4

    aput-object v3, v0, v6

    aput-object v9, v0, v8

    aput-object v5, v0, v10

    aput-object v13, v0, v12

    sput-object v0, Lᴵᵔ/ʽﹳ;->ˆﾞ:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lᴵᵔ/ʽﹳ;->ᵔٴ:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lᴵᵔ/ʽﹳ;->ˈʿ:Ljava/util/HashMap;

    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[F)V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ʽʽ:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ˈٴ:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ٴᵢ:[Ljava/lang/Object;

    iput-object p1, p0, Lᴵᵔ/ʽﹳ;->ᴵˊ:Landroid/util/Property;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p2}, Lᴵᵔ/ʽﹳ;->ˑﹳ([F)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ʽʽ:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ˈٴ:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ٴᵢ:[Ljava/lang/Object;

    iput-object p1, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lᴵᵔ/ʽﹳ;->ˑﹳ([F)V

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lᴵᵔ/ʽﹳ;->ﹳٴ()Lᴵᵔ/ʽﹳ;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    invoke-virtual {v1}, Lᴵᵔ/ˉˆ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˈ(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 9

    .prologue
    iget-object v0, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {p2, v0}, Lᴵᵔ/ʽﹳ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :cond_0
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lᴵᵔ/ʽﹳ;->ᵎˊ:[Ljava/lang/Class;

    goto :goto_0

    :cond_1
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lᴵᵔ/ʽﹳ;->ᵔי:[Ljava/lang/Class;

    goto :goto_0

    :cond_2
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lᴵᵔ/ʽﹳ;->ˆﾞ:[Ljava/lang/Class;

    goto :goto_0

    :cond_3
    new-array v2, v4, [Ljava/lang/Class;

    aput-object p3, v2, v3

    :goto_0
    array-length v5, v2

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v2, v6

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v7, v8, v3

    :try_start_1
    invoke-virtual {p1, v0, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v7, p0, Lᴵᵔ/ʽﹳ;->ᴵᵔ:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    :try_start_2
    invoke-virtual {p1, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iput-object v7, p0, Lᴵᵔ/ʽﹳ;->ᴵᵔ:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_2
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Method "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-static {p2, v2}, Lᴵᵔ/ʽﹳ;->ⁱˊ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() with type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not found on target class "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PropertyValuesHolder"

    nop

    :cond_5
    return-object v1
.end method

.method public final varargs ˑﹳ([F)V
    .locals 8

    .prologue
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lᴵᵔ/ʽﹳ;->ᴵᵔ:Ljava/lang/Class;

    array-length v0, p1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lᴵᵔ/ᵔﹳ;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    new-instance v0, Lᴵᵔ/ᵔﹳ;

    invoke-direct {v0, v2}, Lᴵᵔ/ᵔﹳ;-><init>(F)V

    aput-object v0, v1, v3

    aget p1, p1, v3

    new-instance v0, Lᴵᵔ/ᵔﹳ;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, p1}, Lᴵᵔ/ᵔﹳ;-><init>(FF)V

    aput-object v0, v1, v4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_0
    aget v5, p1, v3

    new-instance v6, Lᴵᵔ/ᵔﹳ;

    invoke-direct {v6, v2, v5}, Lᴵᵔ/ᵔﹳ;-><init>(FF)V

    aput-object v6, v1, v3

    move v2, v4

    :goto_0
    if-ge v2, v0, :cond_2

    int-to-float v5, v2

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aget v6, p1, v2

    new-instance v7, Lᴵᵔ/ᵔﹳ;

    invoke-direct {v7, v5, v6}, Lᴵᵔ/ᵔﹳ;-><init>(FF)V

    aput-object v7, v1, v2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const-string p1, "Animator"

    const-string v0, "Bad value (NaN) in float animator"

    nop

    :cond_3
    new-instance p1, Lᴵᵔ/ˉˆ;

    invoke-direct {p1, v1}, Lᴵᵔ/ˉˆ;-><init>([Lᴵᵔ/ᵔﹳ;)V

    iput-object p1, p0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    iput-object p1, p0, Lᴵᵔ/ʽﹳ;->ᵎⁱ:Lᴵᵔ/ˉˆ;

    return-void
.end method

.method public final ﹳٴ()Lᴵᵔ/ʽﹳ;
    .locals 2

    .prologue
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lᴵᵔ/ʽﹳ;

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    iput-object v1, v0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ᴵˊ:Landroid/util/Property;

    iput-object v1, v0, Lᴵᵔ/ʽﹳ;->ᴵˊ:Landroid/util/Property;

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    invoke-virtual {v1}, Lᴵᵔ/ˉˆ;->ﹳٴ()Lᴵᵔ/ˉˆ;

    move-result-object v1

    iput-object v1, v0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ˉٴ:Lᴵᵔ/ʻٴ;

    iput-object v1, v0, Lᴵᵔ/ʽﹳ;->ˉٴ:Lᴵᵔ/ʻٴ;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v0, Lᴵᵔ/ʽﹳ;->ˊʻ:Lᴵᵔ/ˉˆ;

    iput-object v1, v0, Lᴵᵔ/ʽﹳ;->ᵎⁱ:Lᴵᵔ/ˉˆ;

    return-object v0
.end method

.method public final ﾞᴵ(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    monitor-enter p2

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p0, p1, p3, p4}, Lᴵᵔ/ʽﹳ;->ˈ(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lᴵᵔ/ʽﹳ;->ʾˋ:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p2

    return-object v1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
