.class public final synthetic Lﹳﾞ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﹳᐧ;


# instance fields
.field public final synthetic ʾˋ:Lʼﹶ/ﾞᴵ;


# direct methods
.method public synthetic constructor <init>(Lʼﹶ/ﾞᴵ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﾞ/ﹳٴ;->ʾˋ:Lʼﹶ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ٴﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    new-instance p1, Lﹳﾞ/ᵔᵢ;

    invoke-direct {p1, p4}, Lﹳﾞ/ᵔᵢ;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iget-object v0, p0, Lﹳﾞ/ﹳٴ;->ʾˋ:Lʼﹶ/ﾞᴵ;

    invoke-interface {v0, p1}, Lʼﹶ/ﾞᴵ;->ᵎﹶ(Lʼﹶ/ˑﹳ;)V

    new-instance p1, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p1
.end method
