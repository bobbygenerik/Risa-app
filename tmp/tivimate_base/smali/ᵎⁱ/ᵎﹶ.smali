.class public final Lᵎⁱ/ᵎﹶ;
.super Lﹳˋ/ٴﹶ;
.source "SourceFile"


# static fields
.field public static final ˆﾞ:Ljava/lang/reflect/Method;

.field public static final ᵎˊ:Ljava/lang/Class;

.field public static final ᵔי:Ljava/lang/reflect/Constructor;

.field public static final ᵔٴ:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string v3, "addFontWeightStyle"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v8, Ljava/util/List;

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const/4 v8, 0x3

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x4

    aput-object v5, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Landroid/graphics/Typeface;

    const-string v8, "createFromFamiliesWithDefault"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v4, v7, v6

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TypefaceCompatApi24Impl"

    nop

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    sput-object v0, Lᵎⁱ/ᵎﹶ;->ᵔי:Ljava/lang/reflect/Constructor;

    sput-object v1, Lᵎⁱ/ᵎﹶ;->ᵎˊ:Ljava/lang/Class;

    sput-object v3, Lᵎⁱ/ᵎﹶ;->ˆﾞ:Ljava/lang/reflect/Method;

    sput-object v2, Lᵎⁱ/ᵎﹶ;->ᵔٴ:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static ˏᵢ(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lᵎⁱ/ᵎﹶ;->ᵎˊ:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Lᵎⁱ/ᵎﹶ;->ᵔٴ:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static ᐧᴵ(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lᵎⁱ/ᵎﹶ;->ˆﾞ:Ljava/lang/reflect/Method;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    const/4 p1, 0x4

    aput-object p4, v2, p1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public final ˆʾ(Landroid/content/Context;Lˉٴ/ˑﹳ;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 16

    .prologue
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lᵎⁱ/ᵎﹶ;->ᵔי:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    goto :goto_6

    :cond_0
    move-object/from16 v0, p2

    iget-object v3, v0, Lˉٴ/ˑﹳ;->ﹳٴ:[Lˉٴ/ﾞᴵ;

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    iget v0, v6, Lˉٴ/ﾞᴵ;->ﾞᴵ:I

    invoke-static/range {p1 .. p1}, Lﹳˋ/ʽʽ;->ʼᐧ(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_1

    move-object/from16 v8, p3

    :goto_2
    move-object v0, v1

    goto :goto_5

    :cond_1
    move-object/from16 v8, p3

    :try_start_1
    invoke-static {v7, v8, v0}, Lﹳˋ/ʽʽ;->ˑﹳ(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    :try_start_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    sget-object v11, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v12, 0x0

    invoke-virtual/range {v10 .. v15}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v10, v0

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-object v0, v1

    :goto_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_5
    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    iget v7, v6, Lˉٴ/ﾞᴵ;->ˑﹳ:I

    iget v9, v6, Lˉٴ/ﾞᴵ;->ⁱˊ:I

    iget-boolean v6, v6, Lˉٴ/ﾞᴵ;->ʽ:Z

    invoke-static {v2, v0, v7, v9, v6}, Lᵎⁱ/ᵎﹶ;->ᐧᴵ(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_6
    return-object v1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw v0

    :cond_5
    invoke-static {v2}, Lᵎⁱ/ᵎﹶ;->ˏᵢ(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public final ٴﹶ(Landroid/content/Context;[Lᵔٴ/ᵔᵢ;I)Landroid/graphics/Typeface;
    .locals 9

    .prologue
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lᵎⁱ/ᵎﹶ;->ᵔי:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lיـ/ﹳᐧ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lיـ/ﹳᐧ;-><init>(I)V

    array-length v4, p2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v5, p2, v3

    iget-object v6, v5, Lᵔٴ/ᵔᵢ;->ﹳٴ:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Lיـ/ﹳᐧ;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    if-nez v7, :cond_1

    invoke-static {p1, v6}, Lﹳˋ/ʽʽ;->יـ(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lיـ/ﹳᐧ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    iget v6, v5, Lᵔٴ/ᵔᵢ;->ⁱˊ:I

    iget v8, v5, Lᵔٴ/ᵔᵢ;->ʽ:I

    iget-boolean v5, v5, Lᵔٴ/ᵔᵢ;->ˈ:Z

    invoke-static {v1, v7, v6, v8, v5}, Lᵎⁱ/ᵎﹶ;->ᐧᴵ(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lᵎⁱ/ᵎﹶ;->ˏᵢ(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_2
    return-object v0

    :cond_5
    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method
