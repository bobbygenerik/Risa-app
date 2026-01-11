.class public abstract Lˈـ/ˉٴ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/util/regex/Pattern;

.field public static final ˈ:Ljava/util/regex/Pattern;

.field public static final ⁱˊ:Ljava/util/regex/Pattern;

.field public static final ﹳٴ:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-z])=\\s?((?:.|\u000c)+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˈـ/ˉٴ;->ﹳٴ:Ljava/util/regex/Pattern;

    const-string v0, "^([a-z])=$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˈـ/ˉٴ;->ⁱˊ:Ljava/util/regex/Pattern;

    const-string v0, "([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::((?:.|\u000c)*))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˈـ/ˉٴ;->ʽ:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˈـ/ˉٴ;->ˈ:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static ﹳٴ(Ljava/lang/String;)Lˈـ/ٴᵢ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    new-instance v1, Lˈـ/ˊʻ;

    invoke-direct {v1}, Lˈـ/ˊʻ;-><init>()V

    sget-object v2, Lˈـ/ᴵˊ;->ᵔᵢ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lˈـ/ᴵˊ;->ᵎﹶ:Ljava/lang/String;

    :goto_0
    sget-object v3, Lᐧˎ/ʼʼ;->ﹳٴ:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v5

    move v7, v6

    move v8, v7

    :goto_1
    iget-object v9, v1, Lˈـ/ˊʻ;->ⁱˊ:Lʼʻ/ˊʻ;

    if-ge v7, v4, :cond_16

    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v11, Lˈـ/ˉٴ;->ﹳٴ:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    const-string v13, "i"

    const/4 v14, 0x1

    if-nez v12, :cond_3

    sget-object v9, Lˈـ/ˉٴ;->ⁱˊ:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_7

    :cond_2
    const-string v0, "Malformed SDP line: "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x2

    invoke-virtual {v11, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v16

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    const-string v9, "z"

    :goto_2
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto/16 :goto_7

    :pswitch_2
    const-string v9, "v"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "0"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_7

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDP version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_3
    const-string v9, "u"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v1, Lˈـ/ˊʻ;->ᵎﹶ:Landroid/net/Uri;

    goto/16 :goto_7

    :pswitch_4
    const-string v9, "t"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iput-object v11, v1, Lˈـ/ˊʻ;->ﾞᴵ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_5
    const-string v9, "s"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iput-object v11, v1, Lˈـ/ˊʻ;->ˈ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_6
    const-string v9, "r"

    goto :goto_2

    :pswitch_7
    const-string v9, "p"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iput-object v11, v1, Lˈـ/ˊʻ;->ﾞʻ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_8
    const-string v9, "o"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iput-object v11, v1, Lˈـ/ˊʻ;->ˑﹳ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_9
    const-string v10, "m"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    if-eqz v0, :cond_5

    :try_start_0
    invoke-virtual {v0}, Lˈـ/ﹳٴ;->ﹳٴ()Lˈـ/ʽ;

    move-result-object v0

    invoke-virtual {v9, v0}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_5
    :goto_4
    sget-object v0, Lˈـ/ˉٴ;->ˈ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Malformed SDP media description line: "

    if-eqz v8, :cond_7

    invoke-virtual {v0, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    new-instance v13, Lˈـ/ﹳٴ;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v13, v10, v0, v8, v12}, Lˈـ/ﹳٴ;-><init>(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v13

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v8, "SDPParser"

    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Lᐧˎ/ﹳٴ;->ᴵᵔ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_5
    if-nez v0, :cond_6

    move v8, v14

    goto/16 :goto_7

    :cond_6
    move v8, v6

    goto/16 :goto_7

    :cond_7
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_a
    const-string v9, "k"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v8, :cond_8

    goto/16 :goto_7

    :cond_8
    if-nez v0, :cond_9

    iput-object v11, v1, Lˈـ/ˊʻ;->ʼˎ:Ljava/lang/String;

    goto/16 :goto_7

    :cond_9
    iput-object v11, v0, Lˈـ/ﹳٴ;->ʼˎ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_b
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v8, :cond_a

    goto/16 :goto_7

    :cond_a
    if-nez v0, :cond_b

    iput-object v11, v1, Lˈـ/ˊʻ;->ˆʾ:Ljava/lang/String;

    goto/16 :goto_7

    :cond_b
    iput-object v11, v0, Lˈـ/ﹳٴ;->ᵎﹶ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_c
    const-string v9, "e"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iput-object v11, v1, Lˈـ/ˊʻ;->ٴﹶ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_d
    const-string v9, "c"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v8, :cond_c

    goto/16 :goto_7

    :cond_c
    if-nez v0, :cond_d

    iput-object v11, v1, Lˈـ/ˊʻ;->ᵔᵢ:Ljava/lang/String;

    goto/16 :goto_7

    :cond_d
    iput-object v11, v0, Lˈـ/ﹳٴ;->ᵔᵢ:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_e
    const-string v9, "b"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v8, :cond_e

    goto :goto_7

    :cond_e
    const-string v9, ":\\s?"

    invoke-virtual {v11, v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    if-ne v10, v15, :cond_f

    move v10, v14

    goto :goto_6

    :cond_f
    move v10, v6

    :goto_6
    invoke-static {v10}, Lᐧˎ/ﹳٴ;->ˈ(Z)V

    aget-object v9, v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-nez v0, :cond_10

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, v1, Lˈـ/ˊʻ;->ʽ:I

    goto :goto_7

    :cond_10
    mul-int/lit16 v9, v9, 0x3e8

    iput v9, v0, Lˈـ/ﹳٴ;->ﾞᴵ:I

    goto :goto_7

    :pswitch_f
    const-string v9, "a"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v8, :cond_11

    goto :goto_7

    :cond_11
    sget-object v9, Lˈـ/ˉٴ;->ʽ:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_12

    const-string v9, ""

    :cond_12
    if-nez v0, :cond_13

    iget-object v11, v1, Lˈـ/ˊʻ;->ﹳٴ:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_13
    iget-object v11, v0, Lˈـ/ﹳٴ;->ˑﹳ:Ljava/util/HashMap;

    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_14
    const-string v0, "Malformed Attribute line: "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_15
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_16
    if-eqz v0, :cond_17

    :try_start_2
    invoke-virtual {v0}, Lˈـ/ﹳٴ;->ﹳٴ()Lˈـ/ʽ;

    move-result-object v0

    invoke-virtual {v9, v0}, Lʼʻ/ʽʽ;->ﹳٴ(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_8
    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_17
    :goto_9
    :try_start_3
    new-instance v0, Lˈـ/ٴᵢ;

    invoke-direct {v0, v1}, Lˈـ/ٴᵢ;-><init>(Lˈـ/ˊʻ;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    :goto_a
    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->ⁱˊ(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
