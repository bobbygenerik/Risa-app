.class public final Lﹳˎ/ٴﹶ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic ʽ:Ljava/lang/Thread;

.field public final synthetic ˈ:Lʾٴ/ⁱˊ;

.field public final synthetic ˑﹳ:Lﹳˎ/ˉʿ;

.field public final synthetic ⁱˊ:Ljava/lang/Throwable;

.field public final synthetic ﹳٴ:J


# direct methods
.method public constructor <init>(Lﹳˎ/ˉʿ;JLjava/lang/Throwable;Ljava/lang/Thread;Lʾٴ/ⁱˊ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳˎ/ٴﹶ;->ˑﹳ:Lﹳˎ/ˉʿ;

    iput-wide p2, p0, Lﹳˎ/ٴﹶ;->ﹳٴ:J

    iput-object p4, p0, Lﹳˎ/ٴﹶ;->ⁱˊ:Ljava/lang/Throwable;

    iput-object p5, p0, Lﹳˎ/ٴﹶ;->ʽ:Ljava/lang/Thread;

    iput-object p6, p0, Lﹳˎ/ٴﹶ;->ˈ:Lʾٴ/ⁱˊ;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 34

    .prologue
    move-object/from16 v1, p0

    const-wide/16 v2, 0x3e8

    iget-wide v4, v1, Lﹳˎ/ٴﹶ;->ﹳٴ:J

    div-long v2, v4, v2

    iget-object v6, v1, Lﹳˎ/ٴﹶ;->ˑﹳ:Lﹳˎ/ˉʿ;

    iget-object v0, v6, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    iget-object v0, v0, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v0, Lˑˋ/ⁱˊ;

    invoke-virtual {v0}, Lˑˋ/ⁱˊ;->ʽ()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v8

    :goto_0
    const-string v7, "FirebaseCrashlytics"

    if-nez v0, :cond_1

    const-string v0, "Tried to write a fatal exception while no session was open."

    nop

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v9, v6, Lﹳˎ/ˉʿ;->ʽ:Lـʾ/ᵔﹳ;

    invoke-virtual {v9}, Lـʾ/ᵔﹳ;->ᵎﹶ()V

    iget-object v9, v6, Lﹳˎ/ˉʿ;->ˉʿ:Lﹳʽ/ᴵᵔ;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "Persisting fatal event for session "

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v7, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    nop

    :cond_2
    iget-object v10, v9, Lﹳʽ/ᴵᵔ;->ʾˋ:Ljava/lang/Object;

    check-cast v10, Lﹳˎ/ﹳᐧ;

    iget-object v11, v10, Lﹳˎ/ﹳᐧ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    iget-object v13, v10, Lﹳˎ/ﹳᐧ;->ˈ:Lـʾ/ᵔﹳ;

    new-instance v14, Ljava/util/Stack;

    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    iget-object v15, v1, Lﹳˎ/ٴﹶ;->ⁱˊ:Ljava/lang/Throwable;

    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    goto :goto_1

    :cond_3
    move-object/from16 v20, v8

    :goto_2
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    new-instance v16, Lˏˆ/ﹳٴ;

    invoke-virtual {v15}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    invoke-virtual {v13, v15}, Lـʾ/ᵔﹳ;->ﾞʻ([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v19

    const/16 v21, 0x1a

    invoke-direct/range {v16 .. v21}, Lˏˆ/ﹳٴ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v20, v16

    goto :goto_2

    :cond_4
    move-object/from16 v15, v20

    new-instance v14, Lˈˋ/ˈʿ;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    move-object/from16 v21, v8

    const-string v8, "crash"

    iput-object v8, v14, Lˈˋ/ˈʿ;->ⁱˊ:Ljava/lang/String;

    iput-wide v2, v14, Lˈˋ/ˈʿ;->ﹳٴ:J

    iget-byte v2, v14, Lˈˋ/ˈʿ;->ᵎﹶ:B

    const/4 v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v14, Lˈˋ/ˈʿ;->ᵎﹶ:B

    sget-object v2, Lיˎ/ˈ;->ﹳٴ:Lיˎ/ˈ;

    invoke-virtual {v2, v11}, Lיˎ/ˈ;->ⁱˊ(Landroid/content/Context;)Lˈˋ/ʻᴵ;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, Lˈˋ/ʿᵢ;

    iget v2, v2, Lˈˋ/ʿᵢ;->ʽ:I

    if-lez v2, :cond_6

    const/16 v8, 0x64

    if-eq v2, v8, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_4

    :cond_6
    move-object/from16 v17, v21

    :goto_4
    invoke-static {v11}, Lיˎ/ˈ;->ﹳٴ(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    int-to-byte v2, v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v15, Lˏˆ/ﹳٴ;->ˈٴ:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/StackTraceElement;

    iget-object v3, v1, Lﹳˎ/ٴﹶ;->ʽ:Ljava/lang/Thread;

    move/from16 v20, v12

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v14

    const-string v14, "Null name"

    if-eqz v12, :cond_15

    move-object/from16 v22, v7

    const/4 v1, 0x1

    int-to-byte v7, v1

    const/4 v1, 0x4

    invoke-static {v11, v1}, Lﹳˎ/ﹳᐧ;->ˈ([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    move-result-object v11

    const-string v1, "Null frames"

    if-eqz v11, :cond_14

    move-wide/from16 v24, v4

    const-string v4, " importance"

    const-string v5, "Missing required properties:"

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-ne v7, v6, :cond_12

    new-instance v6, Lˈˋ/ˈⁱ;

    move-object/from16 v27, v0

    const/4 v0, 0x4

    invoke-direct {v6, v0, v12, v11}, Lˈˋ/ˈⁱ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    invoke-virtual {v13, v6}, Lـʾ/ᵔﹳ;->ﾞʻ([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v12, 0x0

    invoke-static {v6, v12}, Lﹳˎ/ﹳᐧ;->ˈ([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    const/4 v12, 0x1

    if-ne v7, v12, :cond_7

    new-instance v12, Lˈˋ/ˈⁱ;

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-direct {v12, v3, v11, v6}, Lˈˋ/ˈⁱ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v7, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v23, v3

    :goto_6
    move-object/from16 v3, v23

    goto :goto_5

    :cond_c
    invoke-static {v8}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    const/4 v3, 0x0

    invoke-static {v15, v3}, Lﹳˎ/ﹳᐧ;->ʽ(Lˏˆ/ﹳٴ;I)Lˈˋ/ـˏ;

    move-result-object v30

    invoke-static {}, Lﹳˎ/ﹳᐧ;->ˑﹳ()Lˈˋ/ﹳـ;

    move-result-object v32

    invoke-virtual {v10}, Lﹳˎ/ﹳᐧ;->ﹳٴ()Ljava/util/List;

    move-result-object v33

    if-eqz v33, :cond_11

    new-instance v28, Lˈˋ/ˊˋ;

    const/16 v31, 0x0

    invoke-direct/range {v28 .. v33}, Lˈˋ/ˊˋ;-><init>(Ljava/util/List;Lˈˋ/ـˏ;Lˈˋ/ـᵎ;Lˈˋ/ﹳـ;Ljava/util/List;)V

    const/4 v1, 0x1

    if-ne v2, v1, :cond_f

    new-instance v13, Lˈˋ/ˋᵔ;

    const/4 v15, 0x0

    move-object/from16 v0, v16

    const/16 v16, 0x0

    move-object/from16 v14, v28

    invoke-direct/range {v13 .. v20}, Lˈˋ/ˋᵔ;-><init>(Lˈˋ/ˊˋ;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lˈˋ/ʻᴵ;Ljava/util/List;I)V

    move/from16 v1, v20

    iput-object v13, v0, Lˈˋ/ˈʿ;->ʽ:Lˈˋ/ـˊ;

    invoke-virtual {v10, v1}, Lﹳˎ/ﹳᐧ;->ⁱˊ(I)Lˈˋ/ᐧﾞ;

    move-result-object v1

    iput-object v1, v0, Lˈˋ/ˈʿ;->ˈ:Lˈˋ/ᵎʿ;

    invoke-virtual {v0}, Lˈˋ/ˈʿ;->ﹳٴ()Lˈˋ/ˑٴ;

    move-result-object v0

    iget-object v1, v9, Lﹳʽ/ᴵᵔ;->ˈٴ:Ljava/lang/Object;

    check-cast v1, Lˆי/ˑﹳ;

    iget-object v2, v9, Lﹳʽ/ᴵᵔ;->ᴵᵔ:Ljava/lang/Object;

    check-cast v2, Lˉˆ/ˎـ;

    sget-object v3, Lﹶˈ/ᵔﹳ;->ʾˋ:Lﹶˈ/ᵔﹳ;

    invoke-static {v0, v1, v2, v3}, Lﹳʽ/ᴵᵔ;->ﹳٴ(Lˈˋ/ˑٴ;Lˆי/ˑﹳ;Lˉˆ/ˎـ;Ljava/util/Map;)Lˈˋ/ˑٴ;

    move-result-object v0

    invoke-static {v0, v2}, Lﹳʽ/ᴵᵔ;->ⁱˊ(Lˈˋ/ˑٴ;Lˉˆ/ˎـ;)Lˈˋ/ﹶ;

    move-result-object v0

    iget-object v1, v9, Lﹳʽ/ᴵᵔ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lˑˋ/ⁱˊ;

    move-object/from16 v8, v27

    const/4 v6, 0x1

    invoke-virtual {v1, v0, v8, v6}, Lˑˋ/ⁱˊ;->ˈ(Lˈˋ/ﹶ;Ljava/lang/String;Z)V

    const-string v0, ".ae"

    move-object/from16 v1, v26

    :try_start_0
    iget-object v2, v1, Lﹳˎ/ˉʿ;->ᵎﹶ:Lˑˋ/ˈ;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v4, v24

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Lˑˋ/ˈ;->ʽʽ:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_7
    move-object/from16 v3, p0

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Create new file failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Could not create app exception marker file."

    move-object/from16 v3, v22

    nop

    goto :goto_7

    :goto_8
    iget-object v0, v3, Lﹳˎ/ٴﹶ;->ˈ:Lʾٴ/ⁱˊ;

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v0, v12}, Lﹳˎ/ˉʿ;->ⁱˊ(ZLʾٴ/ⁱˊ;Z)V

    new-instance v2, Lﹳˎ/ˑﹳ;

    invoke-direct {v2}, Lﹳˎ/ˑﹳ;-><init>()V

    iget-object v2, v2, Lﹳˎ/ˑﹳ;->ﹳٴ:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Lﹳˎ/ˉʿ;->ʽ(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, v1, Lﹳˎ/ˉʿ;->ⁱˊ:Lʼٴ/ٴᵢ;

    invoke-virtual {v2}, Lʼٴ/ٴᵢ;->ﹳٴ()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/ᵎ;->ᵔᵢ(Ljava/lang/Object;)Lˏـ/ˉʿ;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, v0, Lʾٴ/ⁱˊ;->ʼˎ:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˏـ/ᵎﹶ;

    iget-object v0, v0, Lˏـ/ᵎﹶ;->ﹳٴ:Lˏـ/ˉʿ;

    iget-object v1, v1, Lﹳˎ/ˉʿ;->ˑﹳ:Lˈᵔ/ˈ;

    iget-object v1, v1, Lˈᵔ/ˈ;->ﹳٴ:Lˈᵔ/ʽ;

    new-instance v2, Lⁱʽ/ﹳٴ;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lⁱʽ/ﹳٴ;->ʾˋ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lˏـ/ˉʿ;->ᵔᵢ(Ljava/util/concurrent/Executor;Lˏـ/ﾞᴵ;)Lˏـ/ˉʿ;

    move-result-object v0

    return-object v0

    :cond_f
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_10

    const-string v1, " uiOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null binaries"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v7, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v0}, Lﹳˎ/ˆʾ;->ˈ(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v3, v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
