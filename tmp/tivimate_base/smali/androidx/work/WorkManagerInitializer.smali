.class public final Landroidx/work/WorkManagerInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lˊᵎ/ⁱˊ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L\u02ca\u1d4e/\u2071\u02ca;"
    }
.end annotation


# static fields
.field public static final ﹳٴ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WrkMgrInitializer"

    invoke-static {v0}, Lᴵˋ/ˏי;->ᵎﹶ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/WorkManagerInitializer;->ﹳٴ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lᴵˋ/ˏי;->ˑﹳ()Lᴵˋ/ˏי;

    move-result-object v0

    sget-object v1, Landroidx/work/WorkManagerInitializer;->ﹳٴ:Ljava/lang/String;

    const-string v2, "Initializing WorkManager with default configuration."

    invoke-virtual {v0, v1, v2}, Lᴵˋ/ˏי;->ﹳٴ(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lᴵˋ/ⁱˊ;

    invoke-direct {v0}, Lᴵˋ/ⁱˊ;-><init>()V

    invoke-static {p1, v0}, Lـʾ/ﹳᐧ;->ˈⁱ(Landroid/content/Context;Lᴵˋ/ⁱˊ;)V

    invoke-static {p1}, Lـʾ/ﹳᐧ;->ﹳـ(Landroid/content/Context;)Lـʾ/ﹳᐧ;

    move-result-object p1

    return-object p1
.end method

.method public final ﹳٴ()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method
