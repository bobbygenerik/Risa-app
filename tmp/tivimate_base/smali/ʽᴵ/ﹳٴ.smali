.class public final Lʽᴵ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽᴵ/ٴﹶ;


# instance fields
.field public final synthetic ﹳٴ:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lʽᴵ/ﹳٴ;->ﹳٴ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ⁱˊ(Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 4

    .prologue
    invoke-static {p0}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No JsonAdapter for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", you should probably use "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " instead of "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Moshi only supports the collection interfaces by default) or else register a custom JsonAdapter."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final ﹳٴ(Ljava/lang/reflect/Type;Ljava/util/Set;Lʽᴵ/ʾˋ;)Lʽᴵ/ﾞʻ;
    .locals 20

    .prologue
    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v0, p3

    iget v3, v2, Lʽᴵ/ﹳٴ;->ﹳٴ:I

    const-class v4, Ljava/util/Set;

    const-class v5, Ljava/util/List;

    const-class v6, Ljava/util/Collection;

    const-class v7, Ljava/util/Map;

    const-class v8, Ljava/lang/String;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v3, :pswitch_data_0

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v4, Lʽᴵ/ˊʻ;->ⁱˊ:Lʽᴵ/ʽʽ;

    if-ne v1, v3, :cond_1

    move-object v12, v4

    goto/16 :goto_9

    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v5, Lʽᴵ/ˊʻ;->ʽ:Lʽᴵ/ʽʽ;

    if-ne v1, v3, :cond_2

    move-object v12, v5

    goto/16 :goto_9

    :cond_2
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v6, Lʽᴵ/ˊʻ;->ˈ:Lʽᴵ/ʽʽ;

    if-ne v1, v3, :cond_3

    move-object v12, v6

    goto/16 :goto_9

    :cond_3
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v7, Lʽᴵ/ˊʻ;->ˑﹳ:Lʽᴵ/ʽʽ;

    if-ne v1, v3, :cond_4

    move-object v12, v7

    goto/16 :goto_9

    :cond_4
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v15, Lʽᴵ/ˊʻ;->ﾞᴵ:Lʽᴵ/ʽʽ;

    if-ne v1, v3, :cond_5

    move-object v12, v15

    goto/16 :goto_9

    :cond_5
    sget-object v3, Lʽᴵ/ˊʻ;->ᵎﹶ:Lʽᴵ/ʽʽ;

    if-ne v1, v9, :cond_6

    move-object v12, v3

    goto/16 :goto_9

    :cond_6
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v16, Lʽᴵ/ˊʻ;->ᵔᵢ:Lʽᴵ/ʽʽ;

    if-ne v1, v9, :cond_7

    move-object/from16 v12, v16

    goto/16 :goto_9

    :cond_7
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v17, Lʽᴵ/ˊʻ;->ʼˎ:Lʽᴵ/ʽʽ;

    if-ne v1, v9, :cond_8

    move-object/from16 v12, v17

    goto/16 :goto_9

    :cond_8
    const-class v9, Ljava/lang/Boolean;

    if-ne v1, v9, :cond_9

    invoke-virtual {v4}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_9
    const-class v4, Ljava/lang/Byte;

    if-ne v1, v4, :cond_a

    invoke-virtual {v5}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_a
    const-class v4, Ljava/lang/Character;

    if-ne v1, v4, :cond_b

    invoke-virtual {v6}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_b
    const-class v4, Ljava/lang/Double;

    if-ne v1, v4, :cond_c

    invoke-virtual {v7}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_c
    const-class v4, Ljava/lang/Float;

    if-ne v1, v4, :cond_d

    invoke-virtual {v15}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_d
    const-class v4, Ljava/lang/Integer;

    if-ne v1, v4, :cond_e

    invoke-virtual {v3}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_e
    const-class v3, Ljava/lang/Long;

    if-ne v1, v3, :cond_f

    invoke-virtual/range {v16 .. v16}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_f
    const-class v3, Ljava/lang/Short;

    if-ne v1, v3, :cond_10

    invoke-virtual/range {v17 .. v17}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_10
    if-ne v1, v8, :cond_11

    sget-object v0, Lʽᴵ/ˊʻ;->ˆʾ:Lʽᴵ/ʽʽ;

    invoke-virtual {v0}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_11
    if-ne v1, v10, :cond_12

    new-instance v1, Lʽᴵ/ᴵᵔ;

    invoke-direct {v1, v0}, Lʽᴵ/ᴵᵔ;-><init>(Lʽᴵ/ʾˋ;)V

    invoke-virtual {v1}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto/16 :goto_9

    :cond_12
    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    const-class v4, [Ljava/lang/reflect/Type;

    const-class v5, Lʽᴵ/ˉʿ;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lʽᴵ/ˉʿ;

    if-eqz v5, :cond_16

    invoke-interface {v5}, Lʽᴵ/ˉʿ;->generateAdapter()Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_7

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "$"

    const-string v8, "_"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "JsonAdapter"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v14, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    instance-of v6, v1, Ljava/lang/reflect/ParameterizedType;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    const-class v7, Lʽᴵ/ʾˋ;

    if-eqz v6, :cond_14

    :try_start_2
    move-object v6, v1

    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-array v8, v11, [Ljava/lang/Class;

    aput-object v7, v8, v13

    aput-object v4, v8, v14

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v0, v8, v13

    aput-object v6, v8, v14
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :catch_4
    :try_start_4
    new-array v0, v14, [Ljava/lang/Class;

    aput-object v4, v0, v13

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v6, v8, v13
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :goto_0
    move-object v12, v5

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_0

    :cond_14
    :try_start_5
    new-array v4, v14, [Ljava/lang/Class;

    aput-object v7, v4, v13

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v0, v8, v13
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_6
    :try_start_6
    invoke-virtual {v5, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v13, [Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lʽᴵ/ﾞʻ;

    invoke-virtual {v0}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_8

    :catch_7
    move-exception v0

    goto :goto_5

    :goto_2
    invoke-static {v0}, Lᵔˈ/ˑﹳ;->ᵎﹶ(Ljava/lang/reflect/InvocationTargetException;)V

    throw v12

    :goto_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to instantiate the generated JsonAdapter for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to access the generated JsonAdapter for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_5
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_15

    invoke-virtual {v12}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_15

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find the generated JsonAdapter constructor for \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'. Suspiciously, the type was not parameterized but the target class \'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is generic. Consider using Types#newParameterizedType() to define these missing type variables."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_15
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find the generated JsonAdapter constructor for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :goto_6
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find the generated JsonAdapter class for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_16
    :goto_7
    move-object v0, v12

    :goto_8
    if-eqz v0, :cond_17

    move-object v12, v0

    goto :goto_9

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lʽᴵ/ˈٴ;

    invoke-direct {v0, v3}, Lʽᴵ/ˈٴ;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    :cond_18
    :goto_9
    :pswitch_0
    return-object v12

    :pswitch_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_b

    :cond_19
    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v7, :cond_1a

    goto :goto_b

    :cond_1a
    const-class v4, Ljava/util/Properties;

    if-ne v1, v4, :cond_1b

    new-array v1, v11, [Ljava/lang/reflect/Type;

    aput-object v8, v1, v13

    aput-object v8, v1, v14

    goto :goto_a

    :cond_1b
    invoke-virtual {v7, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v1, v3, v7}, Lᵔˈ/ˑﹳ;->ʽ(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, v3, v4, v5}, Lᵔˈ/ˑﹳ;->ﾞᴵ(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1c

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_a

    :cond_1c
    new-array v1, v11, [Ljava/lang/reflect/Type;

    aput-object v10, v1, v13

    aput-object v10, v1, v14

    :goto_a
    new-instance v3, Lʽᴵ/ⁱˊ;

    aget-object v4, v1, v13

    aget-object v1, v1, v14

    invoke-direct {v3, v0, v4, v1}, Lʽᴵ/ⁱˊ;-><init>(Lʽᴵ/ʾˋ;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    invoke-virtual {v3}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    :goto_b
    return-object v12

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_2
    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1e

    goto :goto_d

    :cond_1e
    if-eq v3, v5, :cond_20

    if-ne v3, v6, :cond_1f

    goto :goto_c

    :cond_1f
    if-ne v3, v4, :cond_21

    invoke-static {v1, v6}, Lʽᴵ/ˊʻ;->ﹳٴ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v3, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    invoke-virtual {v0, v1, v3, v12}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    new-instance v1, Lʽᴵ/ᵔᵢ;

    invoke-direct {v1, v0, v14}, Lʽᴵ/ᵔᵢ;-><init>(Lʽᴵ/ﾞʻ;I)V

    invoke-virtual {v1}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto :goto_d

    :cond_20
    :goto_c
    invoke-static {v1, v6}, Lʽᴵ/ˊʻ;->ﹳٴ(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v3, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    invoke-virtual {v0, v1, v3, v12}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    new-instance v1, Lʽᴵ/ᵔᵢ;

    invoke-direct {v1, v0, v13}, Lʽᴵ/ᵔᵢ;-><init>(Lʽᴵ/ﾞʻ;I)V

    invoke-virtual {v1}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    :cond_21
    :goto_d
    return-object v12

    :pswitch_3
    instance-of v3, v1, Ljava/lang/Class;

    if-nez v3, :cond_23

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_23

    :cond_22
    :goto_e
    move-object/from16 v17, v12

    goto/16 :goto_1a

    :cond_23
    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_e

    :cond_24
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_25

    goto :goto_e

    :cond_25
    invoke-static {v3}, Lᵔˈ/ˑﹳ;->ˈ(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-static {v1, v5}, Lʽᴵ/ﹳٴ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    invoke-static {v1, v4}, Lʽᴵ/ﹳٴ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    invoke-static {v1, v7}, Lʽᴵ/ﹳٴ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    invoke-static {v1, v6}, Lʽᴵ/ﹳٴ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Platform "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, " requires explicit JsonAdapter to be registered"

    invoke-static {v0, v3}, Lʼﾞ/ˊˋ;->ᵔﹳ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    invoke-virtual {v3}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v3}, Ljava/lang/Class;->isLocalClass()Z

    move-result v4

    if-nez v4, :cond_3a

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_28

    goto :goto_f

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cannot serialize non-static nested class "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    :goto_f
    invoke-virtual {v3}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-nez v4, :cond_39

    sget-object v4, Lᵔˈ/ˑﹳ;->ˈ:Ljava/lang/Class;

    if-eqz v4, :cond_2b

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_10

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Cannot serialize Kotlin type "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Reflective serialization of Kotlin classes without using kotlin-reflect has undefined and unexpected behavior. Please use KotlinJsonAdapterFactory from the moshi-kotlin artifact or use code gen from the moshi-kotlin-codegen artifact."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    :goto_10
    const-string v4, "newInstance"

    const-class v5, Ljava/io/ObjectStreamClass;

    const-class v6, Ljava/lang/Class;

    :try_start_7
    invoke-virtual {v3, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v8, Lʽᴵ/ʽ;

    invoke-direct {v8, v7, v3}, Lʽᴵ/ʽ;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_8

    move/from16 v16, v13

    goto :goto_11

    :catch_8
    :try_start_8
    const-string v7, "sun.misc.Unsafe"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "theUnsafe"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const-string v15, "allocateInstance"
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_8} :catch_9

    move/from16 v16, v13

    :try_start_9
    new-array v13, v14, [Ljava/lang/Class;

    aput-object v6, v13, v16

    invoke-virtual {v7, v15, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-instance v13, Lʽᴵ/ˈ;

    invoke-direct {v13, v7, v8, v3}, Lʽᴵ/ˈ;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_9} :catch_a

    move-object v8, v13

    goto :goto_11

    :catch_9
    move/from16 v16, v13

    :catch_a
    :try_start_a
    const-string v7, "getConstructorId"

    new-array v8, v14, [Ljava/lang/Class;

    aput-object v6, v8, v16

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v10, v8, v16

    invoke-virtual {v7, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v8, v11, [Ljava/lang/Class;

    aput-object v6, v8, v16

    aput-object v9, v8, v14

    invoke-virtual {v5, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v8, Lʽᴵ/ˑﹳ;

    invoke-direct {v8, v5, v3, v7}, Lʽᴵ/ˑﹳ;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;I)V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_11

    :catch_b
    move-exception v0

    move-object/from16 v17, v12

    goto/16 :goto_19

    :catch_c
    :try_start_b
    const-class v5, Ljava/io/ObjectInputStream;

    new-array v7, v11, [Ljava/lang/Class;

    aput-object v6, v7, v16

    aput-object v6, v7, v14

    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v8, Lʽᴵ/ʽ;

    invoke-direct {v8, v4, v3}, Lʽᴵ/ʽ;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    :goto_11
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    :goto_12
    if-eq v1, v10, :cond_38

    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lᵔˈ/ˑﹳ;->ˈ(Ljava/lang/Class;)Z

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move/from16 v9, v16

    :goto_13
    if-ge v9, v7, :cond_37

    aget-object v11, v6, v9

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-nez v15, :cond_2e

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v15

    if-eqz v15, :cond_2c

    goto :goto_14

    :cond_2c
    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-nez v15, :cond_2d

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v13

    if-nez v13, :cond_2d

    if-nez v5, :cond_2e

    :cond_2d
    const-class v13, Lʽᴵ/ʼˎ;

    invoke-virtual {v11, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lʽᴵ/ʼˎ;

    if-eqz v13, :cond_2f

    invoke-interface {v13}, Lʽᴵ/ʼˎ;->ignore()Z

    move-result v15

    if-eqz v15, :cond_2f

    :cond_2e
    :goto_14
    move-object/from16 p2, v4

    move/from16 v19, v5

    move-object/from16 v17, v12

    move v5, v14

    goto/16 :goto_18

    :cond_2f
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v15

    move-object/from16 v17, v12

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, v4, v15, v12}, Lᵔˈ/ˑﹳ;->ﾞᴵ(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-interface {v11}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v15

    array-length v14, v15

    move/from16 v2, v16

    move-object/from16 v18, v17

    :goto_15
    if-ge v2, v14, :cond_32

    move/from16 p1, v2

    aget-object v2, v15, p1

    move-object/from16 p2, v4

    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    move/from16 v19, v5

    const-class v5, Lʽᴵ/ᵔʾ;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_31

    if-nez v18, :cond_30

    new-instance v18, Ljava/util/LinkedHashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashSet;-><init>()V

    :cond_30
    move-object/from16 v4, v18

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v4

    :cond_31
    add-int/lit8 v2, p1, 0x1

    move-object/from16 v4, p2

    move/from16 v5, v19

    goto :goto_15

    :cond_32
    move-object/from16 p2, v4

    move/from16 v19, v5

    if-eqz v18, :cond_33

    invoke-static/range {v18 .. v18}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_16

    :cond_33
    sget-object v2, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    :goto_16
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v2, v4}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    if-nez v13, :cond_34

    goto :goto_17

    :cond_34
    invoke-interface {v13}, Lʽᴵ/ʼˎ;->name()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u0000"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    goto :goto_17

    :cond_35
    move-object v4, v12

    :goto_17
    new-instance v12, Lʽᴵ/ﾞᴵ;

    invoke-direct {v12, v4, v11, v2}, Lʽᴵ/ﾞᴵ;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;Lʽᴵ/ﾞʻ;)V

    invoke-virtual {v3, v4, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lʽᴵ/ﾞᴵ;

    if-nez v2, :cond_36

    goto :goto_18

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Conflicting fields:\n    "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lʽᴵ/ﾞᴵ;->ⁱˊ:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_18
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move v14, v5

    move-object/from16 v12, v17

    move/from16 v5, v19

    goto/16 :goto_13

    :cond_37
    move-object/from16 v17, v12

    move v5, v14

    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, v2, v4, v6}, Lᵔˈ/ˑﹳ;->ﾞᴵ(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/LinkedHashSet;)Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p0

    goto/16 :goto_12

    :cond_38
    new-instance v0, Lʽᴵ/ᵎﹶ;

    invoke-direct {v0, v8, v3}, Lʽᴵ/ᵎﹶ;-><init>(Lʽᴵ/ˊʻ;Ljava/util/TreeMap;)V

    invoke-virtual {v0}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    goto :goto_1b

    :catch_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot construct instances of "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_19
    invoke-static {v0}, Lᵔˈ/ˑﹳ;->ᵎﹶ(Ljava/lang/reflect/InvocationTargetException;)V

    throw v17

    :catch_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize abstract class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize local class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot serialize anonymous class "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1a
    move-object/from16 v12, v17

    :goto_1b
    return-object v12

    :pswitch_4
    move-object/from16 v17, v12

    instance-of v2, v1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_3c

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1c

    :cond_3c
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_3d

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1c

    :cond_3d
    move-object/from16 v1, v17

    :goto_1c
    if-nez v1, :cond_3e

    goto :goto_1d

    :cond_3e
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    :goto_1d
    move-object/from16 v12, v17

    goto :goto_1e

    :cond_3f
    invoke-static {v1}, Lʽᴵ/ˊʻ;->ˈ(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lᵔˈ/ˑﹳ;->ﹳٴ:Ljava/util/Set;

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v3, v4}, Lʽᴵ/ʾˋ;->ⁱˊ(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lʽᴵ/ﾞʻ;

    move-result-object v0

    new-instance v1, Lʽᴵ/ⁱˊ;

    invoke-direct {v1, v2, v0}, Lʽᴵ/ⁱˊ;-><init>(Ljava/lang/Class;Lʽᴵ/ﾞʻ;)V

    invoke-virtual {v1}, Lʽᴵ/ﾞʻ;->ʽ()Lᵔˈ/ﹳٴ;

    move-result-object v12

    :goto_1e
    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
