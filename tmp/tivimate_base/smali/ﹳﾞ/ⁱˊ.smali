.class public final synthetic Lﹳﾞ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field public final synthetic ﹳٴ:Lﹳﾞ/ﹳٴ;


# direct methods
.method public synthetic constructor <init>(Lﹳﾞ/ﹳٴ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﾞ/ⁱˊ;->ﹳٴ:Lﹳﾞ/ﹳٴ;

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ⁱˊ;->ﹳٴ:Lﹳﾞ/ﹳٴ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lﹳﾞ/ﹳٴ;->ٴﹶ(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    return-object p1
.end method
