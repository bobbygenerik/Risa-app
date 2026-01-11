.class public final synthetic Lﹳﾞ/ˈ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final synthetic ⁱˊ:Lᐧﹳ/ʽ;

.field public final synthetic ﹳٴ:Lʻᴵ/ﾞᴵ;


# direct methods
.method public synthetic constructor <init>(Lʻᴵ/ﾞᴵ;Lᐧﹳ/ʽ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﾞ/ˈ;->ﹳٴ:Lʻᴵ/ﾞᴵ;

    iput-object p2, p0, Lﹳﾞ/ˈ;->ⁱˊ:Lᐧﹳ/ʽ;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    sget v0, Lﹳﾞ/ﾞᴵ;->ˉٴ:I

    iget-object v0, p0, Lﹳﾞ/ˈ;->ⁱˊ:Lᐧﹳ/ʽ;

    iget-object v1, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    check-cast v1, Lﹳﾞ/ʽ;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lﹳﾞ/ʽ;->ʾˋ:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lˊʼ/ˆʾ;->ʽ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Lﹳﾞ/ʽ;

    invoke-direct {v1, p1}, Lﹳﾞ/ʽ;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, v0, Lᐧﹳ/ʽ;->ᴵˊ:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lﹳﾞ/ˈ;->ﹳٴ:Lʻᴵ/ﾞᴵ;

    invoke-virtual {p1, v1}, Lʻᴵ/ﾞᴵ;->ˉˆ(Lﹳﾞ/ʽ;)V

    return-void
.end method
