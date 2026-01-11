.class public final Lʼﾞ/ᐧﾞ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﾞʻ:[Ljava/lang/String;


# instance fields
.field public final ʼˎ:Lʼﾞ/ʻٴ;

.field public final ʽ:Ljava/util/LinkedHashMap;

.field public final ˆʾ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ˈ:Z

.field public final ˑﹳ:Lʼⁱ/ᴵˊ;

.field public ٴﹶ:Lᴵⁱ/ﹳٴ;

.field public final ᵎﹶ:[Ljava/lang/String;

.field public final ᵔᵢ:Lcom/bumptech/glide/ʼˎ;

.field public final ⁱˊ:Ljava/util/LinkedHashMap;

.field public final ﹳٴ:Lʼﾞ/ˊʻ;

.field public final ﾞᴵ:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lʼﾞ/ᐧﾞ;->ﾞʻ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lʼﾞ/ˊʻ;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;ZLʼⁱ/ᴵˊ;)V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lʼﾞ/ᐧﾞ;->ﹳٴ:Lʼﾞ/ˊʻ;

    iput-object p2, p0, Lʼﾞ/ᐧﾞ;->ⁱˊ:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lʼﾞ/ᐧﾞ;->ʽ:Ljava/util/LinkedHashMap;

    iput-boolean p5, p0, Lʼﾞ/ᐧﾞ;->ˈ:Z

    iput-object p6, p0, Lʼﾞ/ᐧﾞ;->ˑﹳ:Lʼⁱ/ᴵˊ;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lʼﾞ/ᐧﾞ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lʼⁱ/ᵔʾ;

    const/16 p3, 0xe

    invoke-direct {p1, p3}, Lʼⁱ/ᵔʾ;-><init>(I)V

    iput-object p1, p0, Lʼﾞ/ᐧﾞ;->ٴﹶ:Lᴵⁱ/ﹳٴ;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lʼﾞ/ᐧﾞ;->ﾞᴵ:Ljava/util/LinkedHashMap;

    array-length p1, p4

    new-array p3, p1, [Ljava/lang/String;

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object p5, p4, p2

    sget-object p6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p5, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lʼﾞ/ᐧﾞ;->ﾞᴵ:Ljava/util/LinkedHashMap;

    invoke-interface {v1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lʼﾞ/ᐧﾞ;->ⁱˊ:Ljava/util/LinkedHashMap;

    aget-object v1, p4, p2

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    goto :goto_1

    :cond_0
    const/4 p6, 0x0

    :goto_1
    if-nez p6, :cond_1

    goto :goto_2

    :cond_1
    move-object p5, p6

    :goto_2
    aput-object p5, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iput-object p3, p0, Lʼﾞ/ᐧﾞ;->ᵎﹶ:[Ljava/lang/String;

    iget-object p1, p0, Lʼﾞ/ᐧﾞ;->ⁱˊ:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    iget-object p5, p0, Lʼﾞ/ᐧﾞ;->ﾞᴵ:Ljava/util/LinkedHashMap;

    invoke-interface {p5, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lʼﾞ/ᐧﾞ;->ﾞᴵ:Ljava/util/LinkedHashMap;

    invoke-static {p4, p3}, Lﹶˈ/ˏי;->ᴵˑ(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    new-instance p1, Lcom/bumptech/glide/ʼˎ;

    iget-object p2, p0, Lʼﾞ/ᐧﾞ;->ᵎﹶ:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p1, Lcom/bumptech/glide/ʼˎ;->ᴵˊ:Ljava/lang/Object;

    new-array p3, p2, [J

    iput-object p3, p1, Lcom/bumptech/glide/ʼˎ;->ʽʽ:Ljava/lang/Object;

    new-array p2, p2, [Z

    iput-object p2, p1, Lcom/bumptech/glide/ʼˎ;->ˈٴ:Ljava/lang/Object;

    iput-object p1, p0, Lʼﾞ/ᐧﾞ;->ᵔᵢ:Lcom/bumptech/glide/ʼˎ;

    new-instance p1, Lʼﾞ/ʻٴ;

    iget-object p2, p0, Lʼﾞ/ᐧﾞ;->ᵎﹶ:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1, p2}, Lʼﾞ/ʻٴ;-><init>(I)V

    iput-object p1, p0, Lʼﾞ/ᐧﾞ;->ʼˎ:Lʼﾞ/ʻٴ;

    return-void
.end method

.method public static final ʽ(Lʼﾞ/ᐧﾞ;Lʼﾞ/ˋᵔ;ILᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 12

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lʼﾞ/ˉـ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lʼﾞ/ˉـ;

    iget v1, v0, Lʼﾞ/ˉـ;->ˆﾞ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ˉـ;->ˆﾞ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ˉـ;

    invoke-direct {v0, p0, p3}, Lʼﾞ/ˉـ;-><init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p3, v0, Lʼﾞ/ˉـ;->ᵎˊ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ˉـ;->ˆﾞ:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget p0, v0, Lʼﾞ/ˉـ;->ٴʼ:I

    iget p1, v0, Lʼﾞ/ˉـ;->ᵎⁱ:I

    iget p2, v0, Lʼﾞ/ˉـ;->ˉٴ:I

    iget-object v1, v0, Lʼﾞ/ˉـ;->ٴᵢ:[Ljava/lang/String;

    iget-object v5, v0, Lʼﾞ/ˉـ;->ˊʻ:Ljava/lang/String;

    iget-object v6, v0, Lʼﾞ/ˉـ;->ᴵᵔ:Lʼﾞ/ʾᵎ;

    iget-object v7, v0, Lʼﾞ/ˉـ;->ˈٴ:Lʼﾞ/ᐧﾞ;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p2, v0, Lʼﾞ/ˉـ;->ˉٴ:I

    iget-object p1, v0, Lʼﾞ/ˉـ;->ᴵᵔ:Lʼﾞ/ʾᵎ;

    iget-object p0, v0, Lʼﾞ/ˉـ;->ˈٴ:Lʼﾞ/ᐧﾞ;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0)"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p0, v0, Lʼﾞ/ˉـ;->ˈٴ:Lʼﾞ/ᐧﾞ;

    iput-object p1, v0, Lʼﾞ/ˉـ;->ᴵᵔ:Lʼﾞ/ʾᵎ;

    iput p2, v0, Lʼﾞ/ˉـ;->ˉٴ:I

    iput v3, v0, Lʼﾞ/ˉـ;->ˆﾞ:I

    invoke-static {p1, p3, v0}, Lʼﾞ/ʽ;->ˑﹳ(Lʼﾞ/ʾᵎ;Ljava/lang/String;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_1
    iget-object p3, p0, Lʼﾞ/ᐧﾞ;->ᵎﹶ:[Ljava/lang/String;

    aget-object p3, p3, p2

    sget-object v1, Lʼﾞ/ᐧﾞ;->ﾞʻ:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v7, p0

    move p0, v6

    move-object v6, p1

    move p1, v5

    move-object v5, p3

    :goto_2
    if-ge p1, p0, :cond_7

    aget-object p3, v1, p1

    iget-boolean v8, v7, Lʼﾞ/ᐧﾞ;->ˈ:Z

    if-eqz v8, :cond_5

    const-string v8, "TEMP"

    goto :goto_3

    :cond_5
    const-string v8, ""

    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "room_table_modification_trigger_"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x5f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CREATE "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " TRIGGER IF NOT EXISTS `"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "` AFTER "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ON `"

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " AND invalidated = 0; END"

    invoke-static {v10, p2, p3}, Lʼﾞ/ˊˋ;->ˏי(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object v7, v0, Lʼﾞ/ˉـ;->ˈٴ:Lʼﾞ/ᐧﾞ;

    iput-object v6, v0, Lʼﾞ/ˉـ;->ᴵᵔ:Lʼﾞ/ʾᵎ;

    iput-object v5, v0, Lʼﾞ/ˉـ;->ˊʻ:Ljava/lang/String;

    iput-object v1, v0, Lʼﾞ/ˉـ;->ٴᵢ:[Ljava/lang/String;

    iput p2, v0, Lʼﾞ/ˉـ;->ˉٴ:I

    iput p1, v0, Lʼﾞ/ˉـ;->ᵎⁱ:I

    iput p0, v0, Lʼﾞ/ˉـ;->ٴʼ:I

    iput v2, v0, Lʼﾞ/ˉـ;->ˆﾞ:I

    invoke-static {v6, p3, v0}, Lʼﾞ/ʽ;->ˑﹳ(Lʼﾞ/ʾᵎ;Ljava/lang/String;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v4, :cond_6

    :goto_4
    return-object v4

    :cond_6
    :goto_5
    add-int/2addr p1, v3

    goto :goto_2

    :cond_7
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method

.method public static final ˈ(Lʼﾞ/ᐧﾞ;Lʼﾞ/ˋᵔ;ILᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 7

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lʼﾞ/ʿ;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lʼﾞ/ʿ;

    iget v1, v0, Lʼﾞ/ʿ;->ᵎˊ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ʿ;->ᵎˊ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ʿ;

    invoke-direct {v0, p0, p3}, Lʼﾞ/ʿ;-><init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p3, v0, Lʼﾞ/ʿ;->ᵎⁱ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ʿ;->ᵎˊ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget p0, v0, Lʼﾞ/ʿ;->ˉٴ:I

    iget p1, v0, Lʼﾞ/ʿ;->ٴᵢ:I

    iget-object p2, v0, Lʼﾞ/ʿ;->ˊʻ:[Ljava/lang/String;

    iget-object v1, v0, Lʼﾞ/ʿ;->ᴵᵔ:Ljava/lang/String;

    iget-object v3, v0, Lʼﾞ/ʿ;->ˈٴ:Lʼﾞ/ʾᵎ;

    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    move-object p3, p2

    move-object p2, v3

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p0, p0, Lʼﾞ/ᐧﾞ;->ᵎﹶ:[Ljava/lang/String;

    aget-object p0, p0, p2

    sget-object p2, Lʼﾞ/ᐧﾞ;->ﾞʻ:[Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v1, 0x3

    move v6, v1

    move-object v1, p0

    move p0, v6

    move-object v6, p2

    move-object p2, p1

    move p1, p3

    move-object p3, v6

    :goto_1
    if-ge p1, p0, :cond_4

    aget-object v3, p3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "room_table_modification_trigger_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DROP TRIGGER IF EXISTS `"

    const/16 v5, 0x60

    invoke-static {v5, v4, v3}, Lʼﾞ/ˊˋ;->ˉˆ(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object p2, v0, Lʼﾞ/ʿ;->ˈٴ:Lʼﾞ/ʾᵎ;

    iput-object v1, v0, Lʼﾞ/ʿ;->ᴵᵔ:Ljava/lang/String;

    iput-object p3, v0, Lʼﾞ/ʿ;->ˊʻ:[Ljava/lang/String;

    iput p1, v0, Lʼﾞ/ʿ;->ٴᵢ:I

    iput p0, v0, Lʼﾞ/ʿ;->ˉٴ:I

    iput v2, v0, Lʼﾞ/ʿ;->ᵎˊ:I

    invoke-static {p2, v3, v0}, Lʼﾞ/ʽ;->ˑﹳ(Lʼﾞ/ʾᵎ;Ljava/lang/String;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v3, v4, :cond_3

    return-object v4

    :cond_3
    :goto_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_4
    sget-object p0, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p0
.end method

.method public static final ⁱˊ(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 11

    .prologue
    iget-object v0, p0, Lʼﾞ/ᐧﾞ;->ﹳٴ:Lʼﾞ/ˊʻ;

    instance-of v1, p1, Lʼﾞ/ˈⁱ;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lʼﾞ/ˈⁱ;

    iget v2, v1, Lʼﾞ/ˈⁱ;->ˉٴ:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lʼﾞ/ˈⁱ;->ˉٴ:I

    goto :goto_0

    :cond_0
    new-instance v1, Lʼﾞ/ˈⁱ;

    invoke-direct {v1, p0, p1}, Lʼﾞ/ˈⁱ;-><init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v1, Lʼﾞ/ˈⁱ;->ˊʻ:Ljava/lang/Object;

    iget v2, v1, Lʼﾞ/ˈⁱ;->ˉٴ:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v1, Lʼﾞ/ˈⁱ;->ᴵᵔ:Lˑי/ʽ;

    iget-object v0, v1, Lʼﾞ/ˈⁱ;->ˈٴ:Lʼﾞ/ᐧﾞ;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v10

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, v0, Lʼﾞ/ˊʻ;->ᵎﹶ:Lˑי/ʽ;

    invoke-virtual {p1}, Lˑי/ʽ;->ʼᐧ()Z

    move-result v2

    sget-object v5, Lﹶˈ/ﹳᐧ;->ʾˋ:Lﹶˈ/ﹳᐧ;

    if-eqz v2, :cond_c

    :try_start_1
    iget-object v2, p0, Lʼﾞ/ᐧﾞ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lˑי/ʽ;->ٴᵢ()V

    return-object v5

    :cond_3
    :try_start_2
    iget-object v2, p0, Lʼﾞ/ᐧﾞ;->ٴﹶ:Lᴵⁱ/ﹳٴ;

    invoke-interface {v2}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lˑי/ʽ;->ٴᵢ()V

    return-object v5

    :cond_4
    :try_start_3
    new-instance v2, Lʼﾞ/ᴵˑ;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {v2, p0, v5, v6}, Lʼﾞ/ᴵˑ;-><init>(Lʼﾞ/ᐧﾞ;Lˈי/ˈ;I)V

    iput-object p0, v1, Lʼﾞ/ˈⁱ;->ˈٴ:Lʼﾞ/ᐧﾞ;

    iput-object p1, v1, Lʼﾞ/ˈⁱ;->ᴵᵔ:Lˑי/ʽ;

    iput v4, v1, Lʼﾞ/ˈⁱ;->ˉٴ:I

    invoke-virtual {v0, v3, v2, v1}, Lʼﾞ/ˊʻ;->ﹳᐧ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    :try_start_4
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lʼﾞ/ᐧﾞ;->ʼˎ:Lʼﾞ/ʻٴ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, v1, Lʼﾞ/ʻٴ;->ﹳٴ:Lᵎˈ/ٴᵢ;

    :cond_7
    invoke-virtual {v1}, Lᵎˈ/ٴᵢ;->ᵔᵢ()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [I

    array-length v6, v5

    new-array v7, v6, [I

    move v8, v3

    :goto_2
    if-ge v8, v6, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    aget v9, v5, v8

    add-int/2addr v9, v4

    goto :goto_3

    :cond_8
    aget v9, v5, v8

    :goto_3
    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    sget-object v5, Lʿᵔ/ⁱˊ;->ⁱˊ:Lʻᴵ/ﹳٴ;

    if-nez v2, :cond_a

    move-object v2, v5

    :cond_a
    invoke-virtual {v1, v2, v7}, Lᵎˈ/ٴᵢ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_4
    iget-object p0, p0, Lʼﾞ/ᐧﾞ;->ˑﹳ:Lʼⁱ/ᴵˊ;

    invoke-virtual {p0, v0}, Lʼⁱ/ᴵˊ;->ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {p1}, Lˑי/ʽ;->ٴᵢ()V

    return-object v0

    :goto_6
    invoke-virtual {p0}, Lˑי/ʽ;->ٴᵢ()V

    throw p1

    :cond_c
    return-object v5
.end method

.method public static final ﹳٴ(Lʼﾞ/ᐧﾞ;Lʼﾞ/ʾᵎ;Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 4

    .prologue
    instance-of v0, p2, Lʼﾞ/ʼˈ;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lʼﾞ/ʼˈ;

    iget v1, v0, Lʼﾞ/ʼˈ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ʼˈ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ʼˈ;

    invoke-direct {v0, p0, p2}, Lʼﾞ/ʼˈ;-><init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p0, v0, Lʼﾞ/ʼˈ;->ᴵᵔ:Ljava/lang/Object;

    iget p2, v0, Lʼﾞ/ʼˈ;->ٴᵢ:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_1

    iget-object p1, v0, Lʼﾞ/ʼˈ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lʼﾞ/ʼˈ;->ˈٴ:Ljava/lang/Object;

    check-cast p1, Lʼﾞ/ʾᵎ;

    invoke-static {p0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    new-instance p0, Lar/tvplayer/core/domain/ـˆ;

    const/16 p2, 0x12

    invoke-direct {p0, p2}, Lar/tvplayer/core/domain/ـˆ;-><init>(I)V

    iput-object p1, v0, Lʼﾞ/ʼˈ;->ˈٴ:Ljava/lang/Object;

    iput v2, v0, Lʼﾞ/ʼˈ;->ٴᵢ:I

    const-string p2, "SELECT * FROM room_table_modification_log WHERE invalidated = 1"

    invoke-interface {p1, p2, p0, v0}, Lʼﾞ/ʾᵎ;->ﹳٴ(Ljava/lang/String;Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    iput-object p0, v0, Lʼﾞ/ʼˈ;->ˈٴ:Ljava/lang/Object;

    iput v1, v0, Lʼﾞ/ʼˈ;->ٴᵢ:I

    const-string p2, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    invoke-static {p1, p2, v0}, Lʼﾞ/ʽ;->ˑﹳ(Lʼﾞ/ʾᵎ;Ljava/lang/String;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    return-object p0
.end method


# virtual methods
.method public final ˑﹳ(Lᴵⁱ/ﹳٴ;Lᴵⁱ/ﹳٴ;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lʼﾞ/ᐧﾞ;->ˆʾ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lᴵⁱ/ﹳٴ;->ʽ()Ljava/lang/Object;

    iget-object p1, p0, Lʼﾞ/ᐧﾞ;->ﹳٴ:Lʼﾞ/ˊʻ;

    iget-object p1, p1, Lʼﾞ/ˊʻ;->ﹳٴ:Lˊʽ/ˈ;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    new-instance v1, Lᴵי/ʻٴ;

    sget-object v2, Lᴵי/ʻٴ;->ᴵˊ:Lᴵי/ʽﹳ;

    invoke-direct {v1, v2}, Lˈי/ﹳٴ;-><init>(Lˈי/ᵎﹶ;)V

    new-instance v2, Lʼˋ/ﾞᴵ;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p2, v0, v3}, Lʼˋ/ﾞᴵ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lˈי/ˈ;I)V

    const/4 p2, 0x2

    invoke-static {p1, v1, v2, p2}, Lᴵי/ʾᵎ;->ˉˆ(Lᴵי/ـˆ;Lˈי/ᵔᵢ;Lᴵⁱ/ʼᐧ;I)Lᴵי/ˈˏ;

    :cond_1
    return-void
.end method

.method public final ᵎﹶ([Ljava/lang/String;)Lʻᵢ/ˑﹳ;
    .locals 7

    .prologue
    new-instance v0, Lⁱˏ/ʼˎ;

    invoke-direct {v0}, Lⁱˏ/ʼˎ;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lʼﾞ/ᐧﾞ;->ʽ:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Lⁱˏ/ʼˎ;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Lⁱˏ/ʼˎ;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lˈˋ/ʾˊ;->ˈ(Lⁱˏ/ʼˎ;)Lⁱˏ/ʼˎ;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    new-array v1, v0, [I

    :goto_2
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lʼﾞ/ᐧﾞ;->ﾞᴵ:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no table with name "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Lʻᵢ/ˑﹳ;

    invoke-direct {v0, p1, v1}, Lʻᵢ/ˑﹳ;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final ﾞᴵ(Lᴵʾ/ʽ;)Ljava/lang/Object;
    .locals 6

    .prologue
    instance-of v0, p1, Lʼﾞ/ʿᵢ;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lʼﾞ/ʿᵢ;

    iget v1, v0, Lʼﾞ/ʿᵢ;->ٴᵢ:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lʼﾞ/ʿᵢ;->ٴᵢ:I

    goto :goto_0

    :cond_0
    new-instance v0, Lʼﾞ/ʿᵢ;

    invoke-direct {v0, p0, p1}, Lʼﾞ/ʿᵢ;-><init>(Lʼﾞ/ᐧﾞ;Lᴵʾ/ʽ;)V

    :goto_0
    iget-object p1, v0, Lʼﾞ/ʿᵢ;->ᴵᵔ:Ljava/lang/Object;

    iget v1, v0, Lʼﾞ/ʿᵢ;->ٴᵢ:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lʼﾞ/ʿᵢ;->ˈٴ:Lˑי/ʽ;

    :try_start_0
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lˈˊ/ᵔʾ;->ˊʻ(Ljava/lang/Object;)V

    iget-object p1, p0, Lʼﾞ/ᐧﾞ;->ﹳٴ:Lʼﾞ/ˊʻ;

    iget-object v1, p1, Lʼﾞ/ˊʻ;->ᵎﹶ:Lˑי/ʽ;

    invoke-virtual {v1}, Lˑי/ʽ;->ʼᐧ()Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_1
    new-instance v3, Lʼﾞ/ᴵˑ;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, p0, v4, v5}, Lʼﾞ/ᴵˑ;-><init>(Lʼﾞ/ᐧﾞ;Lˈי/ˈ;I)V

    iput-object v1, v0, Lʼﾞ/ʿᵢ;->ˈٴ:Lˑי/ʽ;

    iput v2, v0, Lʼﾞ/ʿᵢ;->ٴᵢ:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3, v0}, Lʼﾞ/ˊʻ;->ﹳᐧ(ZLᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lˑי/ʽ;->ٴᵢ()V

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Lˑי/ʽ;->ٴᵢ()V

    throw p1

    :cond_4
    :goto_3
    sget-object p1, Lʻᵢ/ʼᐧ;->ﹳٴ:Lʻᵢ/ʼᐧ;

    return-object p1
.end method
