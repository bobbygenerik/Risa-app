.class public abstract Lˊʻ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Ljava/lang/reflect/Field;

.field public static final ˈ:Ljava/lang/reflect/Method;

.field public static final ˑﹳ:Ljava/lang/reflect/Method;

.field public static final ᵎﹶ:Landroid/os/Handler;

.field public static final ⁱˊ:Ljava/lang/reflect/Field;

.field public static final ﹳٴ:Ljava/lang/Class;

.field public static final ﾞᴵ:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const-class v0, Landroid/app/Activity;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lˊʻ/ʽ;->ᵎﹶ:Landroid/os/Handler;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lˊʻ/ʽ;->ﹳٴ:Ljava/lang/Class;

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "mMainThread"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-object v3, v1

    :goto_1
    sput-object v3, Lˊʻ/ʽ;->ⁱˊ:Ljava/lang/reflect/Field;

    :try_start_2
    const-string v3, "mToken"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-object v0, v1

    :goto_2
    sput-object v0, Lˊʻ/ʽ;->ʽ:Ljava/lang/reflect/Field;

    sget-object v0, Lˊʻ/ʽ;->ﹳٴ:Ljava/lang/Class;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const-string v8, "performStopActivity"

    if-nez v0, :cond_0

    :catchall_3
    move-object v0, v1

    goto :goto_3

    :cond_0
    :try_start_3
    new-array v9, v3, [Ljava/lang/Class;

    aput-object v7, v9, v5

    aput-object v6, v9, v2

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    sput-object v0, Lˊʻ/ʽ;->ˈ:Ljava/lang/reflect/Method;

    sget-object v0, Lˊʻ/ʽ;->ﹳٴ:Ljava/lang/Class;

    if-nez v0, :cond_1

    :catchall_4
    move-object v0, v1

    goto :goto_4

    :cond_1
    :try_start_4
    new-array v9, v4, [Ljava/lang/Class;

    aput-object v7, v9, v5

    aput-object v6, v9, v2

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_4
    sput-object v0, Lˊʻ/ʽ;->ˑﹳ:Ljava/lang/reflect/Method;

    sget-object v0, Lˊʻ/ʽ;->ﹳٴ:Ljava/lang/Class;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1a

    if-eq v8, v9, :cond_2

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_4

    :cond_2
    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    :try_start_5
    const-string v8, "requestRelaunchActivity"

    const/16 v9, 0x9

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v7, v9, v5

    const-class v5, Ljava/util/List;

    aput-object v5, v9, v2

    aput-object v5, v9, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v9, v3

    const/4 v3, 0x4

    aput-object v6, v9, v3

    const-class v3, Landroid/content/res/Configuration;

    const/4 v4, 0x5

    aput-object v3, v9, v4

    const/4 v4, 0x6

    aput-object v3, v9, v4

    const/4 v3, 0x7

    aput-object v6, v9, v3

    const/16 v3, 0x8

    aput-object v6, v9, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-object v1, v0

    :catchall_5
    :cond_4
    :goto_5
    sput-object v1, Lˊʻ/ʽ;->ﾞᴵ:Ljava/lang/reflect/Method;

    return-void
.end method
