.class public final Lﹳﾞ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼﹶ/ﹳٴ;


# static fields
.field public static final ʽʽ:[Ljava/lang/String;

.field public static final ˈٴ:Ljava/lang/Object;

.field public static final ᴵˊ:[Ljava/lang/String;

.field public static final ᴵᵔ:Ljava/lang/Object;


# instance fields
.field public final ʾˋ:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, " OR IGNORE "

    const-string v5, " OR REPLACE "

    const-string v0, ""

    const-string v1, " OR ROLLBACK "

    const-string v2, " OR ABORT "

    const-string v3, " OR FAIL "

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lﹳﾞ/ʽ;->ᴵˊ:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lﹳﾞ/ʽ;->ʽʽ:[Ljava/lang/String;

    new-instance v0, Lᵔʻ/ٴʼ;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lᵔʻ/ٴʼ;-><init>(I)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object v0

    sput-object v0, Lﹳﾞ/ʽ;->ˈٴ:Ljava/lang/Object;

    new-instance v0, Lᵔʻ/ٴʼ;

    const/16 v2, 0x12

    invoke-direct {v0, v2}, Lᵔʻ/ٴʼ;-><init>(I)V

    invoke-static {v1, v0}, Lˈˆ/ﾞᴵ;->ˉٴ(ILᴵⁱ/ﹳٴ;)Lʻᵢ/ʽ;

    move-result-object v0

    sput-object v0, Lﹳﾞ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final isOpen()Z
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public final ʼˎ()V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final ʽʽ(Lʼﹶ/ﾞᴵ;)Landroid/database/Cursor;
    .locals 4

    new-instance v0, Lﹳﾞ/ﹳٴ;

    invoke-direct {v0, p1}, Lﹳﾞ/ﹳٴ;-><init>(Lʼﹶ/ﾞᴵ;)V

    new-instance v1, Lﹳﾞ/ⁱˊ;

    invoke-direct {v1, v0}, Lﹳﾞ/ⁱˊ;-><init>(Lﹳﾞ/ﹳٴ;)V

    invoke-interface {p1}, Lʼﹶ/ﾞᴵ;->ʽ()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lﹳﾞ/ʽ;->ʽʽ:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final ʽﹳ(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final ˆʾ()V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final ˈˏ(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Lʻᴵ/ﹳٴ;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lʻᴵ/ﹳٴ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lﹳﾞ/ʽ;->ʽʽ(Lʼﹶ/ﾞᴵ;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final ˈⁱ()V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final ˉـ()V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    return-void
.end method

.method public final ˉٴ()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lﹳﾞ/ʽ;->ᴵᵔ:Ljava/lang/Object;

    invoke-interface {v2}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v3, Lﹳﾞ/ʽ;->ˈٴ:Ljava/lang/Object;

    invoke-interface {v3}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    invoke-interface {v3}, Lʻᵢ/ʽ;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    iget-object v4, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Required value was null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lﹳﾞ/ʽ;->ˆʾ()V

    return-void
.end method

.method public final ˋᵔ()Z
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public final ˏᵢ(Landroid/content/ContentValues;[Ljava/lang/Object;)I
    .locals 8

    .prologue
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    array-length v1, p2

    add-int/2addr v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UPDATE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lﹳﾞ/ʽ;->ᴵˊ:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WorkSpec SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-lez v5, :cond_0

    const-string v7, ","

    goto :goto_1

    :cond_0
    const-string v7, ""

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v5

    const-string v5, "=?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_2
    if-ge p1, v1, :cond_2

    sub-int v4, p1, v0

    aget-object v4, p2, v4

    aput-object v4, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    const-string p1, "last_enqueue_time = 0 AND interval_duration <> 0 "

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, " WHERE last_enqueue_time = 0 AND interval_duration <> 0 "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lﹳﾞ/ʽ;->ᴵˊ(Ljava/lang/String;)Lﹳﾞ/ʼˎ;

    move-result-object p1

    array-length p2, v2

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p2, :cond_f

    aget-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Lʼﹶ/ˑﹳ;->ﹳٴ(I)V

    goto :goto_3

    :cond_4
    instance-of v3, v1, [B

    if-eqz v3, :cond_5

    check-cast v1, [B

    invoke-interface {p1, v0, v1}, Lʼﹶ/ˑﹳ;->ᵔᵢ(I[B)V

    goto :goto_3

    :cond_5
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v3, v1

    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ⁱˊ(ID)V

    goto :goto_3

    :cond_6
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ⁱˊ(ID)V

    goto :goto_3

    :cond_7
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_8

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ﾞᴵ(IJ)V

    goto :goto_3

    :cond_8
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ﾞᴵ(IJ)V

    goto :goto_3

    :cond_9
    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_a

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ﾞᴵ(IJ)V

    goto :goto_3

    :cond_a
    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ﾞᴵ(IJ)V

    goto :goto_3

    :cond_b
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_c

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lʼﹶ/ˑﹳ;->ʻٴ(ILjava/lang/String;)V

    goto :goto_3

    :cond_c
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_e

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const-wide/16 v3, 0x1

    goto :goto_4

    :cond_d
    const-wide/16 v3, 0x0

    :goto_4
    invoke-interface {p1, v0, v3, v4}, Lʼﹶ/ˑﹳ;->ﾞᴵ(IJ)V

    goto/16 :goto_3

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Cannot bind "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object p1, p1, Lﹳﾞ/ʼˎ;->ᴵˊ:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p1

    return p1

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ٴʼ()Z
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public final ٴﹳ(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 2

    iget-object v0, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public final ᴵˊ(Ljava/lang/String;)Lﹳﾞ/ʼˎ;
    .locals 2

    new-instance v0, Lﹳﾞ/ʼˎ;

    iget-object v1, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Lﹳﾞ/ʼˎ;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public final ﹳـ([Ljava/lang/Object;)V
    .locals 2

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)"

    iget-object v1, p0, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
