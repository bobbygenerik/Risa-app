.class public final Lﹳʻ/ˑﹳ;
.super Lﹳʻ/ﹳٴ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:I

.field public ˈٴ:[C

.field public ᴵᵔ:Lٴـ/ᵔᵢ;


# direct methods
.method public synthetic constructor <init>(Lـʽ/ٴﹶ;Lـˎ/ˈ;Lⁱʽ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lﹳʻ/ˑﹳ;->ʽʽ:I

    invoke-direct {p0, p1, p2, p3}, Lﹳʻ/ﹳٴ;-><init>(Lـʽ/ٴﹶ;Lـˎ/ˈ;Lⁱʽ/ﹳٴ;)V

    return-void
.end method

.method public constructor <init>(Lـʽ/ٴﹶ;[CLـˎ/ˈ;Lⁱʽ/ﹳٴ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lﹳʻ/ˑﹳ;->ʽʽ:I

    invoke-direct {p0, p1, p3, p4}, Lﹳʻ/ﹳٴ;-><init>(Lـʽ/ٴﹶ;Lـˎ/ˈ;Lⁱʽ/ﹳٴ;)V

    iput-object p2, p0, Lﹳʻ/ˑﹳ;->ˈٴ:[C

    return-void
.end method


# virtual methods
.method public ʽˑ(Lـʽ/ᵎﹶ;)Lٴـ/ٴﹶ;
    .locals 3

    .prologue
    iget-object v0, p0, Lﹳʻ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    invoke-static {v0}, Lᴵﾞ/ﹳٴ;->ⁱˊ(Lـʽ/ٴﹶ;)Lٴـ/ᵔᵢ;

    move-result-object v1

    iput-object v1, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    iget-object v1, v0, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    iget-object v0, v0, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lـʽ/ˑﹳ;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    invoke-virtual {v1, v0}, Lٴـ/ᵔᵢ;->ʽ(Lـʽ/ˑﹳ;)V

    :cond_2
    new-instance v0, Lٴـ/ٴﹶ;

    iget-object v1, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    iget-object v2, p0, Lﹳʻ/ˑﹳ;->ˈٴ:[C

    invoke-direct {v0, v1, v2, p1}, Lٴـ/ٴﹶ;-><init>(Ljava/io/InputStream;[CLـʽ/ᵎﹶ;)V

    return-object v0
.end method

.method public final ʿᵢ(Lʽⁱ/ᵎﹶ;Lʻˆ/ﹳٴ;)V
    .locals 12

    .prologue
    iget v0, p0, Lﹳʻ/ˑﹳ;->ʽʽ:I

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    check-cast v0, Lﹳʻ/ﾞᴵ;

    iget-object v8, v0, Lﹳʻ/ﾞᴵ;->ʽʽ:Ljava/lang/String;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    check-cast v2, Lـʽ/ᵎﹶ;

    invoke-static {v8}, Lᴵﾞ/ʽ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lﹳʻ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    if-nez v3, :cond_1

    invoke-static {v4, v8}, Lʽٴ/ˈ;->ﾞʻ(Lـʽ/ٴﹶ;Ljava/lang/String;)Lـʽ/ˑﹳ;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "No file found with name "

    const-string v3, " in zip file"

    invoke-static {v2, v8, v3}, Lˉˆ/ٴᴵ;->ᵔᵢ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v3, v4, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    iget-object v3, v3, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_2
    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lـʽ/ˑﹳ;

    iget-object v9, v7, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_1
    :try_start_0
    iget-object v4, p0, Lﹳʻ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    invoke-static {v4}, Lᴵﾞ/ﹳٴ;->ⁱˊ(Lـʽ/ٴﹶ;)Lٴـ/ᵔᵢ;

    move-result-object v4

    iput-object v4, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    new-instance v4, Lٴـ/ٴﹶ;

    iget-object v5, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    iget-object v6, p0, Lﹳʻ/ˑﹳ;->ˈٴ:[C

    invoke-direct {v4, v5, v6, v2}, Lٴـ/ٴﹶ;-><init>(Ljava/io/InputStream;[CLـʽ/ᵎﹶ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v2, v2, Lـʽ/ᵎﹶ;->ﹳٴ:I

    new-array v7, v2, [B

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lـʽ/ˑﹳ;

    iget-object v2, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    invoke-virtual {v2, v3}, Lٴـ/ᵔᵢ;->ʽ(Lـʽ/ˑﹳ;)V

    iget-object v2, v0, Lﹳʻ/ﾞᴵ;->ˈٴ:Ljava/lang/String;

    const-string v5, "/"

    invoke-static {v2}, Lᴵﾞ/ﹳٴ;->ᵎﹶ(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v8}, Lᴵﾞ/ʽ;->ٴﹶ(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_3
    move-object v5, v2

    move-object v2, v4

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, ""

    :cond_6
    iget-object v6, v3, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_4
    :try_start_2
    iget-object v4, v0, Lﹳʻ/ﾞᴵ;->ᴵˊ:Ljava/lang/String;

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lﹳʻ/ﹳٴ;->ﹶˎ(Lٴـ/ٴﹶ;Lـʽ/ˑﹳ;Ljava/lang/String;Ljava/lang/String;Lʻˆ/ﹳٴ;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_5
    move-object v3, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v2, v4

    goto :goto_5

    :cond_7
    move-object v2, v4

    :try_start_3
    invoke-virtual {v2}, Lٴـ/ٴﹶ;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object v0, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_8
    return-void

    :catchall_2
    move-exception v0

    goto :goto_8

    :goto_6
    :try_start_4
    invoke-virtual {v2}, Lٴـ/ٴﹶ;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_5
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_8
    iget-object v2, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v0

    :pswitch_0
    move-object v0, p1

    check-cast v0, Lﹳʻ/ˈ;

    iget-object v2, v0, Lʽⁱ/ᵎﹶ;->ʾˋ:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lـʽ/ᵎﹶ;

    :try_start_6
    invoke-virtual {p0, v8}, Lﹳʻ/ˑﹳ;->ʽˑ(Lـʽ/ᵎﹶ;)Lٴـ/ٴﹶ;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-object v3, p0, Lﹳʻ/ﹳٴ;->ᴵˊ:Lـʽ/ٴﹶ;

    iget-object v3, v3, Lـʽ/ٴﹶ;->ᴵˊ:Lʼﹳ/ᵎﹶ;

    iget-object v9, v3, Lʼﹳ/ᵎﹶ;->ﹳٴ:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v10, :cond_b

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v11, v3, 0x1

    move-object v3, v4

    check-cast v3, Lـʽ/ˑﹳ;

    iget-object v4, v3, Lـʽ/ⁱˊ;->ᵔי:Ljava/lang/String;

    const-string v5, "__MACOSX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-wide v3, v3, Lـʽ/ⁱˊ;->ᵎⁱ:J

    invoke-virtual {p2, v3, v4}, Lʻˆ/ﹳٴ;->ﹳٴ(J)V

    :goto_a
    move v3, v11

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v3, v0

    goto :goto_b

    :cond_a
    iget-object v4, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    invoke-virtual {v4, v3}, Lٴـ/ᵔᵢ;->ʽ(Lـʽ/ˑﹳ;)V

    iget v4, v8, Lـʽ/ᵎﹶ;->ﹳٴ:I

    new-array v7, v4, [B

    iget-object v4, v0, Lﹳʻ/ˈ;->ᴵˊ:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Lﹳʻ/ﹳٴ;->ﹶˎ(Lٴـ/ٴﹶ;Lـʽ/ˑﹳ;Ljava/lang/String;Ljava/lang/String;Lʻˆ/ﹳٴ;[B)V

    invoke-virtual {p0}, Lʽⁱ/ᵎﹶ;->ٴᴵ()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_a

    :cond_b
    :try_start_8
    invoke-virtual {v2}, Lٴـ/ٴﹶ;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    iget-object v0, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_c
    return-void

    :catchall_5
    move-exception v0

    goto :goto_d

    :goto_b
    :try_start_9
    invoke-virtual {v2}, Lٴـ/ٴﹶ;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    :try_start_a
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_d
    iget-object v2, p0, Lﹳʻ/ˑﹳ;->ᴵᵔ:Lٴـ/ᵔᵢ;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_d
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
