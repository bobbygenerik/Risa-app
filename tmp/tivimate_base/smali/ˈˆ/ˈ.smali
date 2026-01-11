.class public final Lˈˆ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ʼˎ:Ljava/lang/Boolean; = null

.field public static final ʽ:Lﹳˋ/ʼˎ;

.field public static final ˆʾ:Ljava/lang/ThreadLocal;

.field public static final ˈ:Lˋⁱ/ﾞᴵ;

.field public static ˉʿ:Lˈˆ/ʼˎ; = null

.field public static ˑﹳ:Ljava/lang/Boolean; = null

.field public static final ٴﹶ:Lcom/parse/ˑ;

.field public static ᵎﹶ:Z = false

.field public static ᵔʾ:Lˈˆ/ˆʾ; = null

.field public static ᵔᵢ:I = -0x1

.field public static final ⁱˊ:Lᵎˉ/ⁱˊ;

.field public static final ﾞʻ:Lٴﾞ/ˆʾ;

.field public static ﾞᴵ:Ljava/lang/String;


# instance fields
.field public final ﹳٴ:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lˈˆ/ˈ;->ˆʾ:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/parse/ˑ;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/parse/ˑ;-><init>(I)V

    sput-object v0, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    new-instance v0, Lٴﾞ/ˆʾ;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lٴﾞ/ˆʾ;-><init>(I)V

    sput-object v0, Lˈˆ/ˈ;->ﾞʻ:Lٴﾞ/ˆʾ;

    new-instance v0, Lᵎˉ/ⁱˊ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˆ/ˈ;->ⁱˊ:Lᵎˉ/ⁱˊ;

    new-instance v0, Lﹳˋ/ʼˎ;

    invoke-direct {v0, v1}, Lﹳˋ/ʼˎ;-><init>(I)V

    sput-object v0, Lˈˆ/ˈ;->ʽ:Lﹳˋ/ʼˎ;

    new-instance v0, Lˋⁱ/ﾞᴵ;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lˈˆ/ˈ;->ˈ:Lˋⁱ/ﾞᴵ;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lˈˆ/ˈ;->ﹳٴ:Landroid/content/Context;

    return-void
.end method

.method public static ʽ(Landroid/content/Context;Lˈˆ/ʽ;Ljava/lang/String;)Lˈˆ/ˈ;
    .locals 22

    .prologue
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "No acceptable module "

    const-string v4, "VersionPolicy returned invalid code:"

    const-string v5, "Selected remote version of "

    const-string v6, "Selected remote version of "

    const-string v7, "Considering local module "

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_17

    sget-object v9, Lˈˆ/ˈ;->ˆʾ:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lˈˆ/ᵔᵢ;

    new-instance v11, Lˈˆ/ᵔᵢ;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v12, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v9, Lˈˆ/ˈ;->ﾞʻ:Lٴﾞ/ˆʾ;

    invoke-interface {v2, v1, v3, v9}, Lˈˆ/ʽ;->ⁱˊ(Landroid/content/Context;Ljava/lang/String;Lˈˆ/ⁱˊ;)Lʻᴵ/ˆʾ;

    move-result-object v9

    const-string v12, "DynamiteModule"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-wide/from16 v18, v14

    :try_start_1
    iget v14, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    iget v15, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    move-object/from16 v21, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and remote module "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    iget v0, v9, Lʻᴵ/ˆʾ;->ʽ:I

    if-eqz v0, :cond_14

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    iget v0, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    if-eqz v0, :cond_14

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    :goto_0
    const/4 v12, 0x1

    if-ne v0, v12, :cond_1

    iget v14, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    if-eqz v14, :cond_14

    :cond_1
    if-ne v0, v7, :cond_2

    const-string v0, "Selected local version of "

    const-string v1, "DynamiteModule"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v0, Lˈˆ/ˈ;

    invoke-direct {v0, v8}, Lˈˆ/ˈ;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    :cond_2
    if-ne v0, v12, :cond_13

    :try_start_2
    iget v0, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-class v4, Lˈˆ/ˈ;

    monitor-enter v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, Lˈˆ/ˈ;->ᵎﹶ(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_f

    sget-object v14, Lˈˆ/ˈ;->ˑﹳ:Ljava/lang/Boolean;

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v14, :cond_e

    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v14, 0x2

    if-eqz v4, :cond_8

    const-string v4, "DynamiteModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", version >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    const-class v4, Lˈˆ/ˈ;

    monitor-enter v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v5, Lˈˆ/ˈ;->ᵔʾ:Lˈˆ/ˆʾ;

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lˈˆ/ᵔᵢ;

    if-eqz v4, :cond_6

    iget-object v6, v4, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, v4, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    new-instance v15, Lʿᵎ/ⁱˊ;

    const/4 v12, 0x0

    invoke-direct {v15, v12}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    const-class v12, Lˈˆ/ˈ;

    monitor-enter v12
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget v15, Lˈˆ/ˈ;->ᵔᵢ:I

    if-lt v15, v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_1
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v14, :cond_4

    :try_start_9
    const-string v12, "DynamiteModule"

    const-string v14, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    nop

    new-instance v12, Lʿᵎ/ⁱˊ;

    invoke-direct {v12, v6}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lʿᵎ/ⁱˊ;

    invoke-direct {v6, v4}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v12, v3, v0, v6}, Lˈˆ/ˆʾ;->ˋᵔ(Lʿᵎ/ⁱˊ;Ljava/lang/String;ILʿᵎ/ⁱˊ;)Lʿᵎ/ﹳٴ;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_4
    const-string v12, "DynamiteModule"

    const-string v14, "Dynamite loader version < 2, falling back to loadModule2"

    nop

    new-instance v12, Lʿᵎ/ⁱˊ;

    invoke-direct {v12, v6}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lʿᵎ/ⁱˊ;

    invoke-direct {v6, v4}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v12, v3, v0, v6}, Lˈˆ/ˆʾ;->ˑٴ(Lʿᵎ/ⁱˊ;Ljava/lang/String;ILʿᵎ/ⁱˊ;)Lʿᵎ/ﹳٴ;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lʿᵎ/ⁱˊ;->ᵔٴ(Lʿᵎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_5

    new-instance v4, Lˈˆ/ˈ;

    invoke-direct {v4, v0}, Lˈˆ/ˈ;-><init>(Landroid/content/Context;)V

    :goto_3
    move-object v0, v4

    goto/16 :goto_a

    :cond_5
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to get module context"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_6
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "No result cursor"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "DynamiteLoaderV2 was not cached."

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    :cond_8
    const-string v4, "DynamiteModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", version >= "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    invoke-static {v1}, Lˈˆ/ˈ;->ᵔᵢ(Landroid/content/Context;)Lˈˆ/ʼˎ;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const/4 v5, 0x3

    if-lt v6, v5, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lˈˆ/ᵔᵢ;

    if-eqz v5, :cond_9

    new-instance v6, Lʿᵎ/ⁱˊ;

    invoke-direct {v6, v1}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    iget-object v5, v5, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    new-instance v12, Lʿᵎ/ⁱˊ;

    invoke-direct {v12, v5}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6, v3, v0, v12}, Lˈˆ/ʼˎ;->ˋᵔ(Lʿᵎ/ⁱˊ;Ljava/lang/String;ILʿᵎ/ⁱˊ;)Lʿᵎ/ﹳٴ;

    move-result-object v0

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "No cached result cursor holder"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-ne v6, v14, :cond_b

    const-string v5, "DynamiteModule"

    const-string v6, "IDynamite loader version = 2"

    nop

    new-instance v5, Lʿᵎ/ⁱˊ;

    invoke-direct {v5, v1}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v3, v0}, Lˈˆ/ʼˎ;->ˊˋ(Lʿᵎ/ⁱˊ;Ljava/lang/String;I)Lʿᵎ/ﹳٴ;

    move-result-object v0

    goto :goto_4

    :cond_b
    const-string v5, "DynamiteModule"

    const-string v6, "Dynamite loader version < 2, falling back to createModuleContext"

    nop

    new-instance v5, Lʿᵎ/ⁱˊ;

    invoke-direct {v5, v1}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v3, v0}, Lˈˆ/ʼˎ;->ˑٴ(Lʿᵎ/ⁱˊ;Ljava/lang/String;I)Lʿᵎ/ﹳٴ;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lʿᵎ/ⁱˊ;->ᵔٴ(Lʿᵎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v4, Lˈˆ/ˈ;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v4, v0}, Lˈˆ/ˈ;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_c
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to load remote module."

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to create IDynamiteLoader."

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v4, "Failed to determine which loading route to use."

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_4
    move-exception v0

    goto :goto_5

    :cond_f
    :try_start_e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Remote loading disabled"

    invoke-direct {v0, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_6
    :try_start_10
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to load remote module."

    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v0

    goto :goto_9

    :goto_7
    throw v0

    :goto_8
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v5, "Failed to load remote module."

    invoke-direct {v4, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_10
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_9
    :try_start_11
    const-string v4, "DynamiteModule"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to load remote module: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    iget v4, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    if-eqz v4, :cond_12

    new-instance v5, Landroidx/leanback/widget/ﾞʻ;

    const/4 v6, 0x5

    invoke-direct {v5, v4, v6}, Landroidx/leanback/widget/ﾞʻ;-><init>(II)V

    invoke-interface {v2, v1, v3, v5}, Lˈˆ/ʽ;->ⁱˊ(Landroid/content/Context;Ljava/lang/String;Lˈˆ/ⁱˊ;)Lʻᴵ/ˆʾ;

    move-result-object v1

    iget v1, v1, Lʻᴵ/ˆʾ;->ʽ:I

    if-ne v1, v7, :cond_12

    const-string v0, "Selected local version of "

    const-string v1, "DynamiteModule"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v0, Lˈˆ/ˈ;

    invoke-direct {v0, v8}, Lˈˆ/ˈ;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_a
    cmp-long v1, v18, v16

    if-nez v1, :cond_10

    sget-object v1, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_b

    :cond_10
    sget-object v1, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_b
    iget-object v1, v11, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11
    sget-object v1, Lˈˆ/ˈ;->ˆʾ:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    :cond_12
    :try_start_12
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Remote load failed. No local fallback found."

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    iget v1, v9, Lʻᴵ/ˆʾ;->ﹳٴ:I

    iget v2, v9, Lʻᴵ/ˆʾ;->ⁱˊ:I

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " found. Local version is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and remote version is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_5
    move-exception v0

    move-wide/from16 v18, v14

    :goto_c
    cmp-long v1, v18, v16

    if-nez v1, :cond_15

    sget-object v1, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_d

    :cond_15
    sget-object v1, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_d
    iget-object v1, v11, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    sget-object v1, Lˈˆ/ˈ;->ˆʾ:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :cond_17
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "null application Context"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˈ(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 11

    .prologue
    :try_start_0
    const-class v1, Lˈˆ/ˈ;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v0, Lˈˆ/ˈ;->ˑﹳ:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v0, :cond_9

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v5, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "sClassLoader"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    if-ne v6, v7, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    if-eqz v6, :cond_1

    :try_start_4
    invoke-static {v6}, Lˈˆ/ˈ;->ﾞᴵ(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_3

    :cond_1
    invoke-static {p0}, Lˈˆ/ˈ;->ᵎﹶ(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v4

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_12

    :cond_2
    :try_start_7
    sget-boolean v6, Lˈˆ/ˈ;->ᵎﹶ:Z

    if-nez v6, :cond_8

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    :try_start_8
    invoke-static {p0, p1, p2, v2}, Lˈˆ/ˈ;->ˑﹳ(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result v7

    sget-object v8, Lˈˆ/ˈ;->ﾞᴵ:Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lˈˆ/ﾞᴵ;->ʿᵢ()Ljava/lang/ClassLoader;

    move-result-object v8

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_5
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v8, v9, :cond_6

    invoke-static {}, Lˈˆ/ﹳٴ;->ⁱˊ()V

    sget-object v8, Lˈˆ/ˈ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v8}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v9, v8}, Lˈˆ/ﹳٴ;->ﹳٴ(Ljava/lang/ClassLoader;Ljava/lang/String;)Ldalvik/system/DelegateLastClassLoader;

    move-result-object v8

    goto :goto_0

    :cond_6
    new-instance v8, Lˈˆ/ᵎﹶ;

    sget-object v9, Lˈˆ/ˈ;->ﾞᴵ:Ljava/lang/String;

    invoke-static {v9}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :goto_0
    invoke-static {v8}, Lˈˆ/ˈ;->ﾞᴵ(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v3, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v6, Lˈˆ/ˈ;->ˑﹳ:Ljava/lang/Boolean;
    :try_end_8
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return v7

    :cond_7
    :goto_1
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    return v7

    :catch_1
    :try_start_d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    monitor-exit v5

    goto :goto_6

    :goto_4
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    :goto_5
    :try_start_f
    const-string v5, "DynamiteModule"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load module via V2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    sput-object v0, Lˈˆ/ˈ;->ˑﹳ:Ljava/lang/Boolean;

    :cond_9
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v0, :cond_a

    :try_start_11
    invoke-static {p0, p1, p2, v4}, Lˈˆ/ˈ;->ˑﹳ(Landroid/content/Context;Ljava/lang/String;ZZ)I

    move-result p0
    :try_end_11
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    return p0

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_13

    :catch_5
    move-exception v0

    move-object p1, v0

    :try_start_12
    const-string p2, "DynamiteModule"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve remote module version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    return v4

    :cond_a
    invoke-static {p0}, Lˈˆ/ˈ;->ᵔᵢ(Landroid/content/Context;)Lˈˆ/ʼˎ;

    move-result-object v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-nez v5, :cond_b

    goto/16 :goto_10

    :cond_b
    :try_start_13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    const/4 v0, 0x3

    if-lt v1, v0, :cond_12

    sget-object v0, Lˈˆ/ˈ;->ˆʾ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lˈˆ/ᵔᵢ;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    if-eqz v1, :cond_c

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto/16 :goto_10

    :catch_6
    move-exception v0

    move-object p1, v0

    goto/16 :goto_e

    :cond_c
    new-instance v6, Lʿᵎ/ⁱˊ;

    invoke-direct {v6, p0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v5 .. v10}, Lˈˆ/ʼˎ;->ʼˈ(Lʿᵎ/ⁱˊ;Ljava/lang/String;ZJ)Lʿᵎ/ﹳٴ;

    move-result-object p1

    invoke-static {p1}, Lʿᵎ/ⁱˊ;->ᵔٴ(Lʿᵎ/ﹳٴ;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz p1, :cond_11

    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_f

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈˆ/ᵔᵢ;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    if-nez v1, :cond_e

    iput-object p1, v0, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_7

    :cond_e
    move v2, v4

    :goto_7
    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    move-object v3, p1

    :goto_8
    if-eqz v3, :cond_10

    :try_start_15
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :cond_10
    :goto_9
    move v4, p2

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    move-object p2, v0

    goto :goto_b

    :catch_7
    move-exception v0

    move-object p2, v0

    goto :goto_c

    :cond_11
    :goto_a
    :try_start_16
    const-string p2, "DynamiteModule"

    const-string v0, "Failed to retrieve remote module version."

    nop
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-eqz p1, :cond_14

    :try_start_17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    goto/16 :goto_10

    :goto_b
    move-object v3, p1

    goto/16 :goto_11

    :goto_c
    move-object v3, p1

    goto :goto_f

    :cond_12
    move-object v7, p1

    move v8, p2

    const/4 p1, 0x2

    if-ne v1, p1, :cond_13

    :try_start_18
    const-string p1, "DynamiteModule"

    const-string p2, "IDynamite loader version = 2, no high precision latency measurement."

    nop

    new-instance p1, Lʿᵎ/ⁱˊ;

    invoke-direct {p1, p0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x5

    invoke-virtual {v5, p2, p1}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto :goto_9

    :cond_13
    const-string p1, "DynamiteModule"

    const-string p2, "IDynamite loader version < 2, falling back to getModuleVersion2"

    nop

    new-instance p1, Lʿᵎ/ⁱˊ;

    invoke-direct {p1, p0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ˑﹳ()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, Lˎʽ/ﹳٴ;->ʽ(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p2, v0}, Lcom/google/android/gms/internal/measurement/ʾᵎ;->ʽ(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    goto :goto_9

    :goto_d
    move-object p2, p1

    goto :goto_11

    :goto_e
    move-object p2, p1

    :goto_f
    :try_start_19
    const-string p1, "DynamiteModule"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve remote module version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    if-eqz v3, :cond_14

    :try_start_1a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_10
    return v4

    :catchall_4
    move-exception v0

    move-object p1, v0

    goto :goto_d

    :goto_11
    if-eqz v3, :cond_15

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_15
    throw p2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :goto_12
    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :try_start_1c
    throw p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :goto_13
    :try_start_1d
    invoke-static {p0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_8

    goto :goto_14

    :catch_8
    move-exception v0

    move-object p0, v0

    const-string p2, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    nop

    :goto_14
    throw p1
.end method

.method public static ˑﹳ(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 12

    .prologue
    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lˈˆ/ˈ;->ٴﹶ:Lcom/parse/ˑ;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "api_force_staging"

    const-string v4, "api"

    const/4 v5, 0x1

    if-eq v5, p2, :cond_0

    move-object v0, v4

    :cond_0
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v4, "com.google.android.gms.chimera"

    invoke-virtual {p2, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "requestStartUptime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 p0, 0x2

    const/4 p1, 0x0

    if-nez v6, :cond_1

    :goto_0
    move-object v3, v1

    goto/16 :goto_7

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_2

    :catch_0
    :try_start_2
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v4, p1

    :goto_1
    if-ge v4, v0, :cond_a

    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_9

    new-array v7, v2, [Ljava/lang/Object;

    move v8, p1

    :goto_2
    if-ge v8, v2, :cond_8

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v9

    if-eqz v9, :cond_7

    if-eq v9, v5, :cond_6

    if-eq v9, p0, :cond_5

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Unknown column type"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    :cond_5
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    :cond_6
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3

    :cond_7
    aput-object v1, v7, v8

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Cursor read incomplete (ContentProvider dead?)"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :goto_4
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_7
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_6
    :try_start_8
    invoke-virtual {v6}, Landroid/content/ContentProviderClient;->release()Z

    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :goto_7
    if-eqz v3, :cond_13

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {v3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_f

    const-class v2, Lˈˆ/ˈ;

    monitor-enter v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-interface {v3, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lˈˆ/ˈ;->ﾞᴵ:Ljava/lang/String;

    const-string p0, "loaderVersion"

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_b

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    sput p0, Lˈˆ/ˈ;->ᵔᵢ:I

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_b
    :goto_8
    const-string p0, "disableStandaloneDynamiteLoader2"

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_d

    invoke-interface {v3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_c

    move p0, v5

    goto :goto_9

    :cond_c
    move p0, p1

    :goto_9
    sput-boolean p0, Lˈˆ/ˈ;->ᵎﹶ:Z

    goto :goto_a

    :cond_d
    move p0, p1

    :goto_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    sget-object v0, Lˈˆ/ˈ;->ˆʾ:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lˈˆ/ᵔᵢ;

    if-eqz v0, :cond_e

    iget-object v2, v0, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;

    if-nez v2, :cond_e

    iput-object v3, v0, Lˈˆ/ᵔᵢ;->ﹳٴ:Landroid/database/Cursor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_b

    :cond_e
    move v5, p1

    :goto_b
    move p1, p0

    if-eqz v5, :cond_f

    goto :goto_d

    :cond_f
    move-object v1, v3

    goto :goto_d

    :goto_c
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_10

    :goto_d
    if-eqz p3, :cond_11

    if-nez p1, :cond_10

    goto :goto_e

    :cond_10
    :try_start_e
    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "forcing fallback to container DynamiteLoader impl"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_12

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_11

    :cond_11
    :goto_e
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_12
    return p2

    :cond_13
    :try_start_f
    const-string p0, "DynamiteModule"

    const-string p1, "Failed to retrieve remote module version."

    nop

    new-instance p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string p1, "Failed to connect to dynamite module ContentResolver."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :goto_f
    move-object v1, v3

    goto :goto_12

    :goto_10
    move-object v1, v3

    :goto_11
    :try_start_10
    instance-of p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    if-eqz p1, :cond_14

    throw p0

    :cond_14
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "V2 version check failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :goto_12
    if-eqz v1, :cond_15

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_15
    throw p0
.end method

.method public static ᵎﹶ(Landroid/content/Context;)Z
    .locals 6

    .prologue
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lˈˆ/ˈ;->ʼˎ:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    sget-object v0, Lˈˆ/ˈ;->ʼˎ:Ljava/lang/Boolean;

    const-string v1, "DynamiteModule"

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_2

    const/high16 v4, 0x10000000

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    const-string v5, "com.google.android.gms.chimera"

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    sget-object v4, Lᴵˈ/ﾞᴵ;->ⁱˊ:Lᴵˈ/ﾞᴵ;

    const v5, 0x989680

    invoke-virtual {v4, p0, v5}, Lᴵˈ/ﾞᴵ;->ⁱˊ(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "com.google.android.gms"

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v3, v2

    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lˈˆ/ˈ;->ʼˎ:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_4

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-nez p0, :cond_4

    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    nop

    sput-boolean v2, Lˈˆ/ˈ;->ᵎﹶ:Z

    :cond_4
    if-nez v3, :cond_5

    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    nop

    :cond_5
    return v3
.end method

.method public static ᵔᵢ(Landroid/content/Context;)Lˈˆ/ʼˎ;
    .locals 6

    .prologue
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    const-class v1, Lˈˆ/ˈ;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lˈˆ/ˈ;->ˉʿ:Lˈˆ/ʼˎ;

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "com.google.android.gms"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lˈˆ/ʼˎ;

    if-eqz v4, :cond_2

    check-cast v3, Lˈˆ/ʼˎ;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance v3, Lˈˆ/ʼˎ;

    const-string v4, "com.google.android.gms.dynamite.IDynamiteLoader"

    const/4 v5, 0x2

    invoke-direct {v3, p0, v4, v5}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    if-eqz v3, :cond_3

    sput-object v3, Lˈˆ/ˈ;->ˉʿ:Lˈˆ/ʼˎ;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v3

    :goto_1
    const-string v3, "DynamiteModule"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    :cond_3
    monitor-exit v1

    return-object v2

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static ﹳٴ(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .prologue
    const-string v0, "DynamiteModule"

    const-string v1, "Module descriptor id \'"

    const-string v2, "com.google.android.gms.dynamite.descriptors."

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ModuleDescriptor"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "MODULE_ID"

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v4, "MODULE_VERSION"

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lٴﾞ/ʻٴ;->ʼˎ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' didn\'t match expected id \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    return v3

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load module descriptor class: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto :goto_1

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Local module descriptor class for "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    :goto_1
    return v3
.end method

.method public static ﾞᴵ(Ljava/lang/ClassLoader;)V
    .locals 3

    .prologue
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lˈˆ/ˆʾ;

    if-eqz v2, :cond_1

    check-cast v1, Lˈˆ/ˆʾ;

    goto :goto_0

    :cond_1
    new-instance v1, Lˈˆ/ˆʾ;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/measurement/ʾᵎ;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    sput-object v1, Lˈˆ/ˈ;->ᵔʾ:Lˈˆ/ˆʾ;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v1, "Failed to instantiate dynamite loader"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lˈˆ/ˈ;->ﹳٴ:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    const-string v2, "Failed to instantiate module class: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
