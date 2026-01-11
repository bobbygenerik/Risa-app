.class public Lﹳﾞ/ᵔᵢ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʼﹶ/ˑﹳ;


# instance fields
.field public final ʾˋ:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final ʻٴ(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public final ᵔᵢ(I[B)V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public final ⁱˊ(ID)V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public final ﹳٴ(I)V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method

.method public final ﾞᴵ(IJ)V
    .locals 1

    iget-object v0, p0, Lﹳﾞ/ᵔᵢ;->ʾˋ:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method
