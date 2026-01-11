.class public final Lʽᴵ/ⁱˊ;
.super Lʽᴵ/ﾞʻ;
.source "SourceFile"


# static fields
.field public static final ˈ:Lʽᴵ/ﹳٴ;

.field public static final ˑﹳ:Lʽᴵ/ﹳٴ;


# instance fields
.field public final ʽ:Ljava/lang/Object;

.field public final ⁱˊ:Lʽᴵ/ﾞʻ;

.field public final synthetic ﹳٴ:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lʽᴵ/ﹳٴ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lʽᴵ/ﹳٴ;-><init>(I)V

    sput-object v0, Lʽᴵ/ⁱˊ;->ˈ:Lʽᴵ/ﹳٴ;

    new-instance v0, Lʽᴵ/ﹳٴ;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lʽᴵ/ﹳٴ;-><init>(I)V

    sput-object v0, Lʽᴵ/ⁱˊ;->ˑﹳ:Lʽᴵ/ﹳٴ;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lʽᴵ/ﾞʻ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lʽᴵ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʽᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    iput-object p2, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    return-void
.end method

.method public constructor <init>(Lʽᴵ/ʾˋ;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lʽᴵ/ⁱˊ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object p2

    iput-object p2, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-virtual {p1, p3, v0, v1}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object p1

    iput-object p1, p0, Lʽᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    iget v0, p0, Lʽᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonAdapter("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".array()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V
    .locals 4

    .prologue
    iget v0, p0, Lʽᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ᵎﹶ()Lʽᴵ/ᵔﹳ;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ˈٴ()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Nesting problem."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lʽᴵ/ﹳᐧ;->ᴵᵔ:Z

    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v1, Lʽᴵ/ﾞʻ;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/squareup/moshi/JsonDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Map key is null at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ﹳᐧ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ˉˆ()Lʽᴵ/ᵔﹳ;

    return-void

    :pswitch_0
    invoke-virtual {p1}, Lʽᴵ/ﹳᐧ;->ʽ()Lʽᴵ/ᵔﹳ;

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lʽᴵ/ﾞʻ;->ˑﹳ(Lʽᴵ/ﹳᐧ;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    check-cast p1, Lʽᴵ/ᵔﹳ;

    const/4 p2, 0x2

    const/16 v0, 0x5d

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2, v0}, Lʽᴵ/ᵔﹳ;->ᴵʼ(IIC)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;
    .locals 6

    .prologue
    iget v0, p0, Lʽᴵ/ⁱˊ;->ﹳٴ:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lʽᴵ/ـˆ;

    invoke-direct {v0}, Lʽᴵ/ـˆ;-><init>()V

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ᵎﹶ()V

    :goto_0
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʾˋ()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lʽᴵ/ʼᐧ;

    invoke-virtual {v1}, Lʽᴵ/ʼᐧ;->ʾˋ()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lʽᴵ/ʼᐧ;->ˎᐧ()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lʽᴵ/ʼᐧ;->ٴʼ:Ljava/lang/String;

    const/16 v2, 0xb

    iput v2, v1, Lʽᴵ/ʼᐧ;->ٴᵢ:I

    :cond_0
    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v1, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lʽᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast v2, Lʽᴵ/ﾞʻ;

    invoke-virtual {v2, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lʽᴵ/ـˆ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Map key \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' has multiple values at path "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ـˆ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ﹳᐧ()V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʽ()V

    :goto_1
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ʾˋ()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lʽᴵ/ⁱˊ;->ⁱˊ:Lʽᴵ/ﾞʻ;

    invoke-virtual {v1, p1}, Lʽᴵ/ﾞʻ;->ⁱˊ(Lʽᴵ/ˉˆ;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lʽᴵ/ˉˆ;->ˉˆ()V

    iget-object p1, p0, Lʽᴵ/ⁱˊ;->ʽ:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
