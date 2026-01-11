.class public final Lˊʼ/ﾞᴵ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᐧˆ/ⁱˊ;
.implements Lˊʼ/ˑﹳ;


# static fields
.field public static final ⁱˊ:Ljava/util/Map;


# instance fields
.field public final ﹳٴ:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lᴵⁱ/ﹳٴ;

    aput-object v2, v0, v1

    const-class v2, Lᴵⁱ/ﾞʻ;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ʼᐧ;

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ᵔﹳ;

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ﹳᐧ;

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/יـ;

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ˏי;

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ʽﹳ;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ʻٴ;

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const-class v2, Lᴵⁱ/ـˆ;

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v2, 0xa

    const-class v3, Lᴵⁱ/ⁱˊ;

    aput-object v3, v0, v2

    const-class v3, Lᴵⁱ/ʽ;

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ˈ;

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ˑﹳ;

    const/16 v4, 0xd

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ﾞᴵ;

    const/16 v4, 0xe

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ᵎﹶ;

    const/16 v4, 0xf

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ᵔᵢ;

    const/16 v4, 0x10

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ʼˎ;

    const/16 v4, 0x11

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ˆʾ;

    const/16 v4, 0x12

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ٴﹶ;

    const/16 v4, 0x13

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ˉʿ;

    const/16 v4, 0x14

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ᵔʾ;

    const/16 v4, 0x15

    aput-object v3, v0, v4

    const-class v3, Lᴵⁱ/ˉˆ;

    const/16 v4, 0x16

    aput-object v3, v0, v4

    invoke-static {v0}, Lﹶˈ/ٴﹶ;->ʿ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lﹶˈ/ﾞʻ;->ᐧᴵ(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_0

    check-cast v2, Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Lʻᵢ/ˑﹳ;

    invoke-direct {v5, v2, v1}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lﹶˈ/ٴﹶ;->ᐧﾞ()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    invoke-static {v3}, Lﹶˈ/ˏי;->ʿᵢ(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lˊʼ/ﾞᴵ;->ⁱˊ:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˊʼ/ﾞᴵ;->ﹳٴ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    instance-of v0, p1, Lˊʼ/ﾞᴵ;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lˈˋ/ʾˊ;->ʻٴ(Lᐧˆ/ⁱˊ;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lᐧˆ/ⁱˊ;

    invoke-static {p1}, Lˈˋ/ʾˊ;->ʻٴ(Lᐧˆ/ⁱˊ;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, Lˈˋ/ʾˊ;->ʻٴ(Lᐧˆ/ⁱˊ;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lˊʼ/ﾞᴵ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ʽ()Ljava/lang/String;
    .locals 4

    .prologue
    iget-object v0, p0, Lˊʼ/ﾞᴵ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/16 v3, 0x24

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v1}, Lﹶˑ/ˆʾ;->ﹳⁱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v1}, Lﹶˑ/ˆʾ;->ﹳⁱ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v3, v1, v1}, Lﹶˑ/ˆʾ;->ʿـ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const-string v3, "Array"

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lˊʼ/ـˆ;->ˑﹳ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    return-object v3

    :cond_5
    return-object v2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lˊʼ/ـˆ;->ˑﹳ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v1
.end method

.method public final ˈ(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    sget-object v0, Lˊʼ/ﾞᴵ;->ⁱˊ:Ljava/util/Map;

    iget-object v1, p0, Lˊʼ/ﾞᴵ;->ﹳٴ:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Lˊʼ/ـˆ;->ˈ(ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lˊʼ/ʽﹳ;->ﹳٴ(Ljava/lang/Class;)Lˊʼ/ﾞᴵ;

    move-result-object v0

    invoke-static {v0}, Lˈˋ/ʾˊ;->ʻٴ(Lᐧˆ/ⁱˊ;)Ljava/lang/Class;

    move-result-object v1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ⁱˊ()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lˊʼ/ﾞᴵ;->ﹳٴ:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lˊʼ/ـˆ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Array"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string v0, "kotlin.Array"

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lˊʼ/ـˆ;->ʽ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1
.end method

.method public final ﹳٴ()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lˊʼ/ﾞᴵ;->ﹳٴ:Ljava/lang/Class;

    return-object v0
.end method
