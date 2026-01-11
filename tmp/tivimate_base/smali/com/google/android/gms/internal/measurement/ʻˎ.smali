.class public final Lcom/google/android/gms/internal/measurement/ʻˎ;
.super Lcom/google/android/gms/internal/measurement/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final ʽʽ:Z

.field public final ˈٴ:Z

.field public final synthetic ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˑˉ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ˑˉ;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˑˉ;

    const-string p1, "log"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ʽʽ:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ˈٴ:Z

    return-void
.end method


# virtual methods
.method public final ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const-string v4, "log"

    invoke-static {v3, v4, v2}, Lˉᵎ/ⁱˊ;->ˋᵔ(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ᴵᵔ:Lcom/google/android/gms/internal/measurement/ˑˉ;

    if-ne v4, v3, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v3, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lᐧﹳ/ʽ;

    const/4 v9, 0x3

    iget-boolean v12, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ʽʽ:Z

    iget-boolean v13, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ˈٴ:Z

    invoke-virtual/range {v8 .. v13}, Lᐧﹳ/ʽ;->ᴵˊ(ILjava/lang/String;Ljava/util/List;ZZ)V

    return-object v6

    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    iget-object v5, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/measurement/ˏי;

    iget-object v8, v1, Lˏˆ/ﹳٴ;->ʽʽ:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/ˏי;

    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ⁱˊ()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lˉᵎ/ⁱˊ;->ˈⁱ(D)I

    move-result v4

    const/4 v5, 0x5

    const/4 v9, 0x2

    if-eq v4, v9, :cond_4

    const/4 v10, 0x3

    if-eq v4, v10, :cond_3

    if-eq v4, v5, :cond_2

    const/4 v11, 0x6

    if-eq v4, v11, :cond_1

    :goto_0
    move v12, v10

    goto :goto_1

    :cond_1
    move v12, v9

    goto :goto_1

    :cond_2
    move v12, v5

    goto :goto_1

    :cond_3
    move v12, v3

    goto :goto_1

    :cond_4
    const/4 v10, 0x4

    goto :goto_0

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v9, :cond_5

    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lᐧﹳ/ʽ;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ʽʽ:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ˈٴ:Z

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lᐧﹳ/ʽ;->ᴵˊ(ILjava/lang/String;Ljava/util/List;ZZ)V

    return-object v6

    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v9, v3, :cond_6

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵔʾ;

    invoke-virtual {v8, v1, v3}, Lcom/google/android/gms/internal/measurement/ˏי;->ʽ(Lˏˆ/ﹳٴ;Lcom/google/android/gms/internal/measurement/ᵔʾ;)Lcom/google/android/gms/internal/measurement/ᵔʾ;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ᵎﹶ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, v7, Lcom/google/android/gms/internal/measurement/ˑˉ;->ˈٴ:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Lᐧﹳ/ʽ;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ʽʽ:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/measurement/ʻˎ;->ˈٴ:Z

    move/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lᐧﹳ/ʽ;->ᴵˊ(ILjava/lang/String;Ljava/util/List;ZZ)V

    return-object v6
.end method
