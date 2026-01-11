.class public abstract Lᴵˋ/ٴᵢ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Ljava/util/LinkedHashSet;

.field public ⁱˊ:Lˑᵎ/ﹳᐧ;

.field public ﹳٴ:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 36

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lᴵˋ/ٴᵢ;->ﹳٴ:Ljava/util/UUID;

    new-instance v2, Lˑᵎ/ﹳᐧ;

    iget-object v1, v0, Lᴵˋ/ٴᵢ;->ﹳٴ:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v17, 0x0

    const/16 v27, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0x1fffffa

    invoke-direct/range {v2 .. v35}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIJIILjava/lang/String;Ljava/lang/Boolean;I)V

    iput-object v2, v0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x1

    invoke-static {v3}, Lﹶˈ/ˏי;->ˉـ(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iput-object v2, v0, Lᴵˋ/ٴᵢ;->ʽ:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public abstract ʽ()Lᴵˋ/ٴᵢ;
.end method

.method public abstract ⁱˊ()Lᴵˋ/ˉٴ;
.end method

.method public final ﹳٴ()Lᴵˋ/ˉٴ;
    .locals 40

    .prologue
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lᴵˋ/ٴᵢ;->ⁱˊ()Lᴵˋ/ˉٴ;

    move-result-object v1

    iget-object v2, v0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-object v2, v2, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt v3, v4, :cond_0

    invoke-virtual {v2}, Lᴵˋ/ˑﹳ;->ⁱˊ()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-boolean v3, v2, Lᴵˋ/ˑﹳ;->ˑﹳ:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lᴵˋ/ˑﹳ;->ʽ:Z

    if-nez v3, :cond_2

    iget-boolean v2, v2, Lᴵˋ/ˑﹳ;->ˈ:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    iget-object v3, v0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-boolean v4, v3, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    if-eqz v4, :cond_5

    if-nez v2, :cond_4

    iget-wide v7, v3, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gtz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expedited jobs cannot be delayed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expedited jobs only support network and storage constraints"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    iget-object v2, v3, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    const/16 v4, 0x7f

    if-nez v2, :cond_8

    iget-object v2, v3, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    const-string v7, "."

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lﹶˑ/ˆʾ;->ʻᴵ(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v5, :cond_6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_6
    invoke-static {v2}, Lﹶˈ/ˆʾ;->ـᵎ(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-static {v4, v2}, Lﹶˑ/ˆʾ;->ʽˑ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v3, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_9

    iget-object v3, v0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    invoke-static {v4, v2}, Lﹶˑ/ˆʾ;->ʽˑ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    :cond_9
    :goto_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v0, Lᴵˋ/ٴᵢ;->ﹳٴ:Ljava/util/UUID;

    new-instance v3, Lˑᵎ/ﹳᐧ;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    iget-object v6, v2, Lˑᵎ/ﹳᐧ;->ʽ:Ljava/lang/String;

    iget-object v5, v2, Lˑᵎ/ﹳᐧ;->ⁱˊ:Lᴵˋ/ˈٴ;

    iget-object v7, v2, Lˑᵎ/ﹳᐧ;->ˈ:Ljava/lang/String;

    new-instance v8, Lᴵˋ/ᵔᵢ;

    iget-object v9, v2, Lˑᵎ/ﹳᐧ;->ˑﹳ:Lᴵˋ/ᵔᵢ;

    invoke-direct {v8, v9}, Lᴵˋ/ᵔᵢ;-><init>(Lᴵˋ/ᵔᵢ;)V

    new-instance v9, Lᴵˋ/ᵔᵢ;

    iget-object v10, v2, Lˑᵎ/ﹳᐧ;->ﾞᴵ:Lᴵˋ/ᵔᵢ;

    invoke-direct {v9, v10}, Lᴵˋ/ᵔᵢ;-><init>(Lᴵˋ/ᵔᵢ;)V

    iget-wide v10, v2, Lˑᵎ/ﹳᐧ;->ᵎﹶ:J

    iget-wide v12, v2, Lˑᵎ/ﹳᐧ;->ᵔᵢ:J

    iget-wide v14, v2, Lˑᵎ/ﹳᐧ;->ʼˎ:J

    move-object/from16 v37, v1

    new-instance v1, Lᴵˋ/ˑﹳ;

    move-object/from16 v16, v3

    iget-object v3, v2, Lˑᵎ/ﹳᐧ;->ˆʾ:Lᴵˋ/ˑﹳ;

    invoke-direct {v1, v3}, Lᴵˋ/ˑﹳ;-><init>(Lᴵˋ/ˑﹳ;)V

    iget v3, v2, Lˑᵎ/ﹳᐧ;->ٴﹶ:I

    move-object/from16 v17, v1

    iget v1, v2, Lˑᵎ/ﹳᐧ;->ﾞʻ:I

    move/from16 v19, v3

    move-object/from16 v18, v4

    iget-wide v3, v2, Lˑᵎ/ﹳᐧ;->ˉʿ:J

    move-wide/from16 v20, v3

    iget-wide v3, v2, Lˑᵎ/ﹳᐧ;->ᵔʾ:J

    move-wide/from16 v22, v3

    iget-wide v3, v2, Lˑᵎ/ﹳᐧ;->ˉˆ:J

    move-wide/from16 v24, v3

    iget-wide v3, v2, Lˑᵎ/ﹳᐧ;->ʼᐧ:J

    move/from16 v26, v1

    iget-boolean v1, v2, Lˑᵎ/ﹳᐧ;->ᵔﹳ:Z

    move/from16 v27, v1

    iget v1, v2, Lˑᵎ/ﹳᐧ;->ﹳᐧ:I

    move/from16 v28, v1

    iget v1, v2, Lˑᵎ/ﹳᐧ;->יـ:I

    move-wide/from16 v29, v3

    iget-wide v3, v2, Lˑᵎ/ﹳᐧ;->ʽﹳ:J

    move/from16 v31, v1

    iget v1, v2, Lˑᵎ/ﹳᐧ;->ʻٴ:I

    move/from16 v32, v1

    iget v1, v2, Lˑᵎ/ﹳᐧ;->ـˆ:I

    move/from16 v33, v1

    iget-object v1, v2, Lˑᵎ/ﹳᐧ;->ʾᵎ:Ljava/lang/String;

    iget-object v2, v2, Lˑᵎ/ﹳᐧ;->ʼʼ:Ljava/lang/Boolean;

    const/high16 v36, 0x80000

    move-object/from16 v34, v1

    move-object/from16 v35, v2

    move-wide/from16 v38, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-object/from16 v4, v18

    move/from16 v17, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move/from16 v18, v26

    move-wide/from16 v25, v29

    move/from16 v29, v31

    move-wide/from16 v30, v38

    invoke-direct/range {v3 .. v36}, Lˑᵎ/ﹳᐧ;-><init>(Ljava/lang/String;Lᴵˋ/ˈٴ;Ljava/lang/String;Ljava/lang/String;Lᴵˋ/ᵔᵢ;Lᴵˋ/ᵔᵢ;JJJLᴵˋ/ˑﹳ;IIJJJJZIIJIILjava/lang/String;Ljava/lang/Boolean;I)V

    iput-object v3, v0, Lᴵˋ/ٴᵢ;->ⁱˊ:Lˑᵎ/ﹳᐧ;

    return-object v37
.end method
